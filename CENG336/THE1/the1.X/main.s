PROCESSOR 18F8722

#include <xc.inc>

; CONFIGURATION (DO NOT EDIT)
; CONFIG1H
CONFIG OSC = HSPLL      ; Oscillator Selection bits (HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1))
CONFIG FCMEN = OFF      ; Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
CONFIG IESO = OFF       ; Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)
; CONFIG2L
CONFIG PWRT = OFF       ; Power-up Timer Enable bit (PWRT disabled)
CONFIG BOREN = OFF      ; Brown-out Reset Enable bits (Brown-out Reset disabled in hardware and software)
; CONFIG2H
CONFIG WDT = OFF        ; Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
; CONFIG3H
CONFIG LPT1OSC = OFF    ; Low-Power Timer1 Oscillator Enable bit (Timer1 configured for higher power operation)
CONFIG MCLRE = ON       ; MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)
; CONFIG4L
CONFIG LVP = OFF        ; Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
CONFIG XINST = OFF      ; Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))
CONFIG DEBUG = OFF      ; Disable In-Circuit Debugger

GLOBAL var1
GLOBAL var2
GLOBAL wait_counter
GLOBAL state_b
GLOBAL state_c
GLOBAL prev_r0
GLOBAL prev_r1
GLOBAL light ; is set to 1 every 500ms
GLOBAL result

; Define space for the variables in RAM
PSECT udata_acs
var1:
    DS 1 ; Allocate 1 byte for var1
var2:
    DS 1 

wait_counter:
    DS 1
    
state_b:
    DS 1  
state_c:
    DS 1 
    
prev_r0:
    DS 1 
prev_r1:
    DS 1
    
light:
    DS 1
    
temp_result:
    DS 1   
result: 
    DS 1


PSECT resetVec,class=CODE,reloc=2
resetVec:
    goto       main

PSECT CODE
main:
    clrf var1	; var1 = 0		
    clrf var2   ; var2 = 0	
    clrf state_b; state_b = 0
    clrf state_c; state_c = 0
    clrf prev_r0; prev_r0 = 0
    clrf prev_r1; prev_r1 = 0
    clrf result ; result = 0
    clrf light	; light = 0xff
    
    ; set all pins of portb, portc and portd to output mode
    ; set all pins of porte to input mode
    clrf TRISB
    clrf TRISC
    clrf TRISD
    setf TRISE
    
    setf PORTB
    setf PORTC
    setf PORTD
    
    call wait1000
    
    clrf PORTB
    clrf PORTC
    clrf PORTD

main_loop:
    call handle_counter
    call handle_buttons
    call handle_display
    clrf light
    goto main_loop
    return

handle_counter:
    btfss var1, 7
    bra inc_var1
    reset_var1:
	clrf var1
	incf var2
	movf var2, W
	sublw 63
	bz set_light
	return
    set_light:
	clrf var1
	clrf var2
	setf light
    inc_var1:
	incf var1
    return
    
handle_buttons:
    call handle_re0
    call handle_re1
    return
    
handle_display:
    call handle_portb
    call handle_portc
    call handle_portd
    return
    
handle_portb:
    btfss state_b, 0
    bra portb_disabled
    
    portb_enabled:
	btfss light, 0
	bra keep_state_b
	btfss PORTB, 0
	bra init_portb
	progress_b:
	    btfsc PORTB, 7
	    bra reset_portb
	    movf PORTB, W
	    addwf WREG, F
	    bsf WREG, 0
	    movwf PORTB
	    return
	init_portb:
	    bsf PORTB, 0
	    return
	reset_portb:
	    clrf PORTB
	keep_state_b:
	    return
    portb_disabled:
	btfsc light, 0
	clrf PORTB
	
    return
    
handle_portc:
    btfss state_c, 0
    bra portc_disabled
    
    portc_enabled:
	btfss light, 0
	bra keep_state_c
	btfss PORTC, 7
	bra init_portc
	
	progress_portc:
	    btfsc PORTC, 0
	    bra reset_portc
	    movf PORTC, W
	    rrncf WREG, F
	    bsf WREG, 7
	    movwf PORTC
	    return
	init_portc:
	    bsf PORTC, 7
	    return
	reset_portc:
	    clrf PORTC
	keep_state_c:
	    return
    portc_disabled:
	btfsc light, 0
	clrf PORTC
	
    return

handle_portd:
    btfsc light, 0
    bra light_d
    return
    
    light_d:
	movlw 0x01
	xorwf LATD, F
	
    return
    
handle_re0:
    movf PORTE, W
    andlw 0x01
    xorwf prev_r0, W
    
    bz state_unchanged_r0
    state_changed_r0:
	movf PORTE, W
	andlw 0x01
	movwf prev_r0
	btfss PORTE, 0
	comf state_c
	
    state_unchanged_r0:
	return
    
handle_re1:
    movf PORTE, W
    andlw 0x02
    xorwf prev_r1, W
    
    bz state_unchanged_r1
    state_changed_r1:
	movf PORTE, W
	andlw 0x02
	movwf prev_r1
	btfss PORTE, 1
	comf state_b
	
    state_unchanged_r1:
	return
    
wait1000:
    movlw 5
    movwf wait_counter
    loop:
	call wait197
	decfsz wait_counter
	bra loop
    return
    
wait197:
    clrf var1
    outer_loop:
	clrf var2
	inner_loop:
	    incfsz var2
	    bra inner_loop
	incfsz var1
	bra outer_loop
    return

end resetVec
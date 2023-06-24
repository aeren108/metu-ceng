.global main

.text

main:
	movq %rsp, %rdi
	movq %rsp, %rsi
	sub $0x80, %rdi
	add $0x8, %rsi
	movq $0x40178d, (%rsp)
	ret  

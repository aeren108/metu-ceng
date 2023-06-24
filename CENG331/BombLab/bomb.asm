
bomb:     file format elf64-x86-64


Disassembly of section .init:

00000000000017b8 <_init>:
    17b8:	48 83 ec 08          	sub    $0x8,%rsp
    17bc:	48 8b 05 25 38 20 00 	mov    0x203825(%rip),%rax        # 204fe8 <__gmon_start__>
    17c3:	48 85 c0             	test   %rax,%rax
    17c6:	74 02                	je     17ca <_init+0x12>
    17c8:	ff d0                	call   *%rax
    17ca:	48 83 c4 08          	add    $0x8,%rsp
    17ce:	c3                   	ret

Disassembly of section .plt:

00000000000017d0 <.plt>:
    17d0:	ff 35 12 37 20 00    	push   0x203712(%rip)        # 204ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    17d6:	ff 25 14 37 20 00    	jmp    *0x203714(%rip)        # 204ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    17dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017e0 <__strcat_chk@plt>:
    17e0:	ff 25 12 37 20 00    	jmp    *0x203712(%rip)        # 204ef8 <__strcat_chk@GLIBC_2.3.4>
    17e6:	68 00 00 00 00       	push   $0x0
    17eb:	e9 e0 ff ff ff       	jmp    17d0 <.plt>

00000000000017f0 <getenv@plt>:
    17f0:	ff 25 0a 37 20 00    	jmp    *0x20370a(%rip)        # 204f00 <getenv@GLIBC_2.2.5>
    17f6:	68 01 00 00 00       	push   $0x1
    17fb:	e9 d0 ff ff ff       	jmp    17d0 <.plt>

0000000000001800 <strcasecmp@plt>:
    1800:	ff 25 02 37 20 00    	jmp    *0x203702(%rip)        # 204f08 <strcasecmp@GLIBC_2.2.5>
    1806:	68 02 00 00 00       	push   $0x2
    180b:	e9 c0 ff ff ff       	jmp    17d0 <.plt>

0000000000001810 <__errno_location@plt>:
    1810:	ff 25 fa 36 20 00    	jmp    *0x2036fa(%rip)        # 204f10 <__errno_location@GLIBC_2.2.5>
    1816:	68 03 00 00 00       	push   $0x3
    181b:	e9 b0 ff ff ff       	jmp    17d0 <.plt>

0000000000001820 <strcpy@plt>:
    1820:	ff 25 f2 36 20 00    	jmp    *0x2036f2(%rip)        # 204f18 <strcpy@GLIBC_2.2.5>
    1826:	68 04 00 00 00       	push   $0x4
    182b:	e9 a0 ff ff ff       	jmp    17d0 <.plt>

0000000000001830 <puts@plt>:
    1830:	ff 25 ea 36 20 00    	jmp    *0x2036ea(%rip)        # 204f20 <puts@GLIBC_2.2.5>
    1836:	68 05 00 00 00       	push   $0x5
    183b:	e9 90 ff ff ff       	jmp    17d0 <.plt>

0000000000001840 <write@plt>:
    1840:	ff 25 e2 36 20 00    	jmp    *0x2036e2(%rip)        # 204f28 <write@GLIBC_2.2.5>
    1846:	68 06 00 00 00       	push   $0x6
    184b:	e9 80 ff ff ff       	jmp    17d0 <.plt>

0000000000001850 <__stack_chk_fail@plt>:
    1850:	ff 25 da 36 20 00    	jmp    *0x2036da(%rip)        # 204f30 <__stack_chk_fail@GLIBC_2.4>
    1856:	68 07 00 00 00       	push   $0x7
    185b:	e9 70 ff ff ff       	jmp    17d0 <.plt>

0000000000001860 <alarm@plt>:
    1860:	ff 25 d2 36 20 00    	jmp    *0x2036d2(%rip)        # 204f38 <alarm@GLIBC_2.2.5>
    1866:	68 08 00 00 00       	push   $0x8
    186b:	e9 60 ff ff ff       	jmp    17d0 <.plt>

0000000000001870 <close@plt>:
    1870:	ff 25 ca 36 20 00    	jmp    *0x2036ca(%rip)        # 204f40 <close@GLIBC_2.2.5>
    1876:	68 09 00 00 00       	push   $0x9
    187b:	e9 50 ff ff ff       	jmp    17d0 <.plt>

0000000000001880 <read@plt>:
    1880:	ff 25 c2 36 20 00    	jmp    *0x2036c2(%rip)        # 204f48 <read@GLIBC_2.2.5>
    1886:	68 0a 00 00 00       	push   $0xa
    188b:	e9 40 ff ff ff       	jmp    17d0 <.plt>

0000000000001890 <fgets@plt>:
    1890:	ff 25 ba 36 20 00    	jmp    *0x2036ba(%rip)        # 204f50 <fgets@GLIBC_2.2.5>
    1896:	68 0b 00 00 00       	push   $0xb
    189b:	e9 30 ff ff ff       	jmp    17d0 <.plt>

00000000000018a0 <signal@plt>:
    18a0:	ff 25 b2 36 20 00    	jmp    *0x2036b2(%rip)        # 204f58 <signal@GLIBC_2.2.5>
    18a6:	68 0c 00 00 00       	push   $0xc
    18ab:	e9 20 ff ff ff       	jmp    17d0 <.plt>

00000000000018b0 <gethostbyname@plt>:
    18b0:	ff 25 aa 36 20 00    	jmp    *0x2036aa(%rip)        # 204f60 <gethostbyname@GLIBC_2.2.5>
    18b6:	68 0d 00 00 00       	push   $0xd
    18bb:	e9 10 ff ff ff       	jmp    17d0 <.plt>

00000000000018c0 <__memmove_chk@plt>:
    18c0:	ff 25 a2 36 20 00    	jmp    *0x2036a2(%rip)        # 204f68 <__memmove_chk@GLIBC_2.3.4>
    18c6:	68 0e 00 00 00       	push   $0xe
    18cb:	e9 00 ff ff ff       	jmp    17d0 <.plt>

00000000000018d0 <strtol@plt>:
    18d0:	ff 25 9a 36 20 00    	jmp    *0x20369a(%rip)        # 204f70 <strtol@GLIBC_2.2.5>
    18d6:	68 0f 00 00 00       	push   $0xf
    18db:	e9 f0 fe ff ff       	jmp    17d0 <.plt>

00000000000018e0 <fflush@plt>:
    18e0:	ff 25 92 36 20 00    	jmp    *0x203692(%rip)        # 204f78 <fflush@GLIBC_2.2.5>
    18e6:	68 10 00 00 00       	push   $0x10
    18eb:	e9 e0 fe ff ff       	jmp    17d0 <.plt>

00000000000018f0 <__isoc99_sscanf@plt>:
    18f0:	ff 25 8a 36 20 00    	jmp    *0x20368a(%rip)        # 204f80 <__isoc99_sscanf@GLIBC_2.7>
    18f6:	68 11 00 00 00       	push   $0x11
    18fb:	e9 d0 fe ff ff       	jmp    17d0 <.plt>

0000000000001900 <__printf_chk@plt>:
    1900:	ff 25 82 36 20 00    	jmp    *0x203682(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
    1906:	68 12 00 00 00       	push   $0x12
    190b:	e9 c0 fe ff ff       	jmp    17d0 <.plt>

0000000000001910 <fopen@plt>:
    1910:	ff 25 7a 36 20 00    	jmp    *0x20367a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
    1916:	68 13 00 00 00       	push   $0x13
    191b:	e9 b0 fe ff ff       	jmp    17d0 <.plt>

0000000000001920 <gethostname@plt>:
    1920:	ff 25 72 36 20 00    	jmp    *0x203672(%rip)        # 204f98 <gethostname@GLIBC_2.2.5>
    1926:	68 14 00 00 00       	push   $0x14
    192b:	e9 a0 fe ff ff       	jmp    17d0 <.plt>

0000000000001930 <exit@plt>:
    1930:	ff 25 6a 36 20 00    	jmp    *0x20366a(%rip)        # 204fa0 <exit@GLIBC_2.2.5>
    1936:	68 15 00 00 00       	push   $0x15
    193b:	e9 90 fe ff ff       	jmp    17d0 <.plt>

0000000000001940 <connect@plt>:
    1940:	ff 25 62 36 20 00    	jmp    *0x203662(%rip)        # 204fa8 <connect@GLIBC_2.2.5>
    1946:	68 16 00 00 00       	push   $0x16
    194b:	e9 80 fe ff ff       	jmp    17d0 <.plt>

0000000000001950 <__fprintf_chk@plt>:
    1950:	ff 25 5a 36 20 00    	jmp    *0x20365a(%rip)        # 204fb0 <__fprintf_chk@GLIBC_2.3.4>
    1956:	68 17 00 00 00       	push   $0x17
    195b:	e9 70 fe ff ff       	jmp    17d0 <.plt>

0000000000001960 <sleep@plt>:
    1960:	ff 25 52 36 20 00    	jmp    *0x203652(%rip)        # 204fb8 <sleep@GLIBC_2.2.5>
    1966:	68 18 00 00 00       	push   $0x18
    196b:	e9 60 fe ff ff       	jmp    17d0 <.plt>

0000000000001970 <__ctype_b_loc@plt>:
    1970:	ff 25 4a 36 20 00    	jmp    *0x20364a(%rip)        # 204fc0 <__ctype_b_loc@GLIBC_2.3>
    1976:	68 19 00 00 00       	push   $0x19
    197b:	e9 50 fe ff ff       	jmp    17d0 <.plt>

0000000000001980 <__sprintf_chk@plt>:
    1980:	ff 25 42 36 20 00    	jmp    *0x203642(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
    1986:	68 1a 00 00 00       	push   $0x1a
    198b:	e9 40 fe ff ff       	jmp    17d0 <.plt>

0000000000001990 <socket@plt>:
    1990:	ff 25 3a 36 20 00    	jmp    *0x20363a(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
    1996:	68 1b 00 00 00       	push   $0x1b
    199b:	e9 30 fe ff ff       	jmp    17d0 <.plt>

Disassembly of section .plt.got:

00000000000019a0 <__cxa_finalize@plt>:
    19a0:	ff 25 52 36 20 00    	jmp    *0x203652(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    19a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000019b0 <_start>:
    19b0:	31 ed                	xor    %ebp,%ebp
    19b2:	49 89 d1             	mov    %rdx,%r9
    19b5:	5e                   	pop    %rsi
    19b6:	48 89 e2             	mov    %rsp,%rdx
    19b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    19bd:	50                   	push   %rax
    19be:	54                   	push   %rsp
    19bf:	4c 8d 05 ca 1a 00 00 	lea    0x1aca(%rip),%r8        # 3490 <__libc_csu_fini>
    19c6:	48 8d 0d 53 1a 00 00 	lea    0x1a53(%rip),%rcx        # 3420 <__libc_csu_init>
    19cd:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 1aba <main>
    19d4:	ff 15 06 36 20 00    	call   *0x203606(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    19da:	f4                   	hlt
    19db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000019e0 <deregister_tm_clones>:
    19e0:	48 8d 3d 99 3c 20 00 	lea    0x203c99(%rip),%rdi        # 205680 <stdout@GLIBC_2.2.5>
    19e7:	55                   	push   %rbp
    19e8:	48 8d 05 91 3c 20 00 	lea    0x203c91(%rip),%rax        # 205680 <stdout@GLIBC_2.2.5>
    19ef:	48 39 f8             	cmp    %rdi,%rax
    19f2:	48 89 e5             	mov    %rsp,%rbp
    19f5:	74 19                	je     1a10 <deregister_tm_clones+0x30>
    19f7:	48 8b 05 da 35 20 00 	mov    0x2035da(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    19fe:	48 85 c0             	test   %rax,%rax
    1a01:	74 0d                	je     1a10 <deregister_tm_clones+0x30>
    1a03:	5d                   	pop    %rbp
    1a04:	ff e0                	jmp    *%rax
    1a06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a0d:	00 00 00 
    1a10:	5d                   	pop    %rbp
    1a11:	c3                   	ret
    1a12:	0f 1f 40 00          	nopl   0x0(%rax)
    1a16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a1d:	00 00 00 

0000000000001a20 <register_tm_clones>:
    1a20:	48 8d 3d 59 3c 20 00 	lea    0x203c59(%rip),%rdi        # 205680 <stdout@GLIBC_2.2.5>
    1a27:	48 8d 35 52 3c 20 00 	lea    0x203c52(%rip),%rsi        # 205680 <stdout@GLIBC_2.2.5>
    1a2e:	55                   	push   %rbp
    1a2f:	48 29 fe             	sub    %rdi,%rsi
    1a32:	48 89 e5             	mov    %rsp,%rbp
    1a35:	48 c1 fe 03          	sar    $0x3,%rsi
    1a39:	48 89 f0             	mov    %rsi,%rax
    1a3c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1a40:	48 01 c6             	add    %rax,%rsi
    1a43:	48 d1 fe             	sar    %rsi
    1a46:	74 18                	je     1a60 <register_tm_clones+0x40>
    1a48:	48 8b 05 a1 35 20 00 	mov    0x2035a1(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    1a4f:	48 85 c0             	test   %rax,%rax
    1a52:	74 0c                	je     1a60 <register_tm_clones+0x40>
    1a54:	5d                   	pop    %rbp
    1a55:	ff e0                	jmp    *%rax
    1a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a5e:	00 00 
    1a60:	5d                   	pop    %rbp
    1a61:	c3                   	ret
    1a62:	0f 1f 40 00          	nopl   0x0(%rax)
    1a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a6d:	00 00 00 

0000000000001a70 <__do_global_dtors_aux>:
    1a70:	80 3d 31 3c 20 00 00 	cmpb   $0x0,0x203c31(%rip)        # 2056a8 <completed.7698>
    1a77:	75 2f                	jne    1aa8 <__do_global_dtors_aux+0x38>
    1a79:	48 83 3d 77 35 20 00 	cmpq   $0x0,0x203577(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    1a80:	00 
    1a81:	55                   	push   %rbp
    1a82:	48 89 e5             	mov    %rsp,%rbp
    1a85:	74 0c                	je     1a93 <__do_global_dtors_aux+0x23>
    1a87:	48 8b 3d 7a 35 20 00 	mov    0x20357a(%rip),%rdi        # 205008 <__dso_handle>
    1a8e:	e8 0d ff ff ff       	call   19a0 <__cxa_finalize@plt>
    1a93:	e8 48 ff ff ff       	call   19e0 <deregister_tm_clones>
    1a98:	c6 05 09 3c 20 00 01 	movb   $0x1,0x203c09(%rip)        # 2056a8 <completed.7698>
    1a9f:	5d                   	pop    %rbp
    1aa0:	c3                   	ret
    1aa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1aa8:	f3 c3                	repz ret
    1aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001ab0 <frame_dummy>:
    1ab0:	55                   	push   %rbp
    1ab1:	48 89 e5             	mov    %rsp,%rbp
    1ab4:	5d                   	pop    %rbp
    1ab5:	e9 66 ff ff ff       	jmp    1a20 <register_tm_clones>

0000000000001aba <main>:
    1aba:	53                   	push   %rbx
    1abb:	83 ff 01             	cmp    $0x1,%edi
    1abe:	0f 84 02 01 00 00    	je     1bc6 <main+0x10c>
    1ac4:	48 89 f3             	mov    %rsi,%rbx
    1ac7:	83 ff 02             	cmp    $0x2,%edi
    1aca:	0f 85 2b 01 00 00    	jne    1bfb <main+0x141>
    1ad0:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1ad4:	48 8d 35 aa 22 00 00 	lea    0x22aa(%rip),%rsi        # 3d85 <array.3436+0x6e5>
    1adb:	e8 30 fe ff ff       	call   1910 <fopen@plt>
    1ae0:	48 89 05 c9 3b 20 00 	mov    %rax,0x203bc9(%rip)        # 2056b0 <infile>
    1ae7:	48 85 c0             	test   %rax,%rax
    1aea:	0f 84 e9 00 00 00    	je     1bd9 <main+0x11f>
    1af0:	e8 e2 07 00 00       	call   22d7 <initialize_bomb>
    1af5:	48 8d 35 2c 1a 00 00 	lea    0x1a2c(%rip),%rsi        # 3528 <_IO_stdin_used+0x88>
    1afc:	bf 01 00 00 00       	mov    $0x1,%edi
    1b01:	b8 00 00 00 00       	mov    $0x0,%eax
    1b06:	e8 f5 fd ff ff       	call   1900 <__printf_chk@plt>
    1b0b:	48 8d 3d 76 1a 00 00 	lea    0x1a76(%rip),%rdi        # 3588 <_IO_stdin_used+0xe8>
    1b12:	e8 19 fd ff ff       	call   1830 <puts@plt>
    1b17:	e8 20 0b 00 00       	call   263c <read_line>
    1b1c:	48 89 c7             	mov    %rax,%rdi
    1b1f:	e8 fa 00 00 00       	call   1c1e <phase_1>
    1b24:	e8 57 0c 00 00       	call   2780 <phase_defused>
    1b29:	48 8d 3d 88 1a 00 00 	lea    0x1a88(%rip),%rdi        # 35b8 <_IO_stdin_used+0x118>
    1b30:	e8 fb fc ff ff       	call   1830 <puts@plt>
    1b35:	e8 02 0b 00 00       	call   263c <read_line>
    1b3a:	48 89 c7             	mov    %rax,%rdi
    1b3d:	e8 9e 01 00 00       	call   1ce0 <phase_2>
    1b42:	e8 39 0c 00 00       	call   2780 <phase_defused>
    1b47:	48 8d 3d 8d 19 00 00 	lea    0x198d(%rip),%rdi        # 34db <_IO_stdin_used+0x3b>
    1b4e:	e8 dd fc ff ff       	call   1830 <puts@plt>
    1b53:	e8 e4 0a 00 00       	call   263c <read_line>
    1b58:	48 89 c7             	mov    %rax,%rdi
    1b5b:	e8 fa 01 00 00       	call   1d5a <phase_3>
    1b60:	e8 1b 0c 00 00       	call   2780 <phase_defused>
    1b65:	48 8d 3d 8d 19 00 00 	lea    0x198d(%rip),%rdi        # 34f9 <_IO_stdin_used+0x59>
    1b6c:	e8 bf fc ff ff       	call   1830 <puts@plt>
    1b71:	e8 c6 0a 00 00       	call   263c <read_line>
    1b76:	48 89 c7             	mov    %rax,%rdi
    1b79:	e8 cb 02 00 00       	call   1e49 <phase_4>
    1b7e:	e8 fd 0b 00 00       	call   2780 <phase_defused>
    1b83:	48 8d 3d 5e 1a 00 00 	lea    0x1a5e(%rip),%rdi        # 35e8 <_IO_stdin_used+0x148>
    1b8a:	e8 a1 fc ff ff       	call   1830 <puts@plt>
    1b8f:	e8 a8 0a 00 00       	call   263c <read_line>
    1b94:	48 89 c7             	mov    %rax,%rdi
    1b97:	e8 44 03 00 00       	call   1ee0 <phase_5>
    1b9c:	e8 df 0b 00 00       	call   2780 <phase_defused>
    1ba1:	48 8d 3d 60 19 00 00 	lea    0x1960(%rip),%rdi        # 3508 <_IO_stdin_used+0x68>
    1ba8:	e8 83 fc ff ff       	call   1830 <puts@plt>
    1bad:	e8 8a 0a 00 00       	call   263c <read_line>
    1bb2:	48 89 c7             	mov    %rax,%rdi
    1bb5:	e8 b5 03 00 00       	call   1f6f <phase_6>
    1bba:	e8 c1 0b 00 00       	call   2780 <phase_defused>
    1bbf:	b8 00 00 00 00       	mov    $0x0,%eax
    1bc4:	5b                   	pop    %rbx
    1bc5:	c3                   	ret
    1bc6:	48 8b 05 c3 3a 20 00 	mov    0x203ac3(%rip),%rax        # 205690 <stdin@GLIBC_2.2.5>
    1bcd:	48 89 05 dc 3a 20 00 	mov    %rax,0x203adc(%rip)        # 2056b0 <infile>
    1bd4:	e9 17 ff ff ff       	jmp    1af0 <main+0x36>
    1bd9:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1bdd:	48 8b 13             	mov    (%rbx),%rdx
    1be0:	48 8d 35 bd 18 00 00 	lea    0x18bd(%rip),%rsi        # 34a4 <_IO_stdin_used+0x4>
    1be7:	bf 01 00 00 00       	mov    $0x1,%edi
    1bec:	e8 0f fd ff ff       	call   1900 <__printf_chk@plt>
    1bf1:	bf 08 00 00 00       	mov    $0x8,%edi
    1bf6:	e8 35 fd ff ff       	call   1930 <exit@plt>
    1bfb:	48 8b 16             	mov    (%rsi),%rdx
    1bfe:	48 8d 35 bc 18 00 00 	lea    0x18bc(%rip),%rsi        # 34c1 <_IO_stdin_used+0x21>
    1c05:	bf 01 00 00 00       	mov    $0x1,%edi
    1c0a:	b8 00 00 00 00       	mov    $0x0,%eax
    1c0f:	e8 ec fc ff ff       	call   1900 <__printf_chk@plt>
    1c14:	bf 08 00 00 00       	mov    $0x8,%edi
    1c19:	e8 12 fd ff ff       	call   1930 <exit@plt>

0000000000001c1e <phase_1>:
    1c1e:	55                   	push   %rbp
    1c1f:	53                   	push   %rbx
    1c20:	48 83 ec 68          	sub    $0x68,%rsp
    1c24:	48 89 fd             	mov    %rdi,%rbp
    1c27:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c2e:	00 00 
    1c30:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1c35:	31 c0                	xor    %eax,%eax
    1c37:	48 b8 54 68 65 20 74 	movabs $0x7478657420656854,%rax
    1c3e:	65 78 74 
    1c41:	ba 20 69 73 20       	mov    $0x20736920,%edx
    1c46:	48 89 04 24          	mov    %rax,(%rsp)
    1c4a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1c4f:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    1c56:	00 00 
    1c58:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    1c5f:	00 00 
    1c61:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    1c68:	00 00 
    1c6a:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    1c71:	00 00 
    1c73:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    1c7a:	00 00 
    1c7c:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    1c83:	00 00 
    1c85:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    1c8c:	00 00 
    1c8e:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    1c95:	00 00 
    1c97:	48 89 e3             	mov    %rsp,%rbx
    1c9a:	ba 50 00 00 00       	mov    $0x50,%edx
    1c9f:	48 8d 35 6a 19 00 00 	lea    0x196a(%rip),%rsi        # 3610 <_IO_stdin_used+0x170>
    1ca6:	48 89 df             	mov    %rbx,%rdi
    1ca9:	e8 32 fb ff ff       	call   17e0 <__strcat_chk@plt>
    1cae:	48 89 de             	mov    %rbx,%rsi
    1cb1:	48 89 ef             	mov    %rbp,%rdi
    1cb4:	e8 9b 05 00 00       	call   2254 <strings_not_equal>
    1cb9:	85 c0                	test   %eax,%eax
    1cbb:	75 17                	jne    1cd4 <phase_1+0xb6>
    1cbd:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1cc2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1cc9:	00 00 
    1ccb:	75 0e                	jne    1cdb <phase_1+0xbd>
    1ccd:	48 83 c4 68          	add    $0x68,%rsp
    1cd1:	5b                   	pop    %rbx
    1cd2:	5d                   	pop    %rbp
    1cd3:	c3                   	ret
    1cd4:	e8 9b 08 00 00       	call   2574 <explode_bomb>
    1cd9:	eb e2                	jmp    1cbd <phase_1+0x9f>
    1cdb:	e8 70 fb ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000001ce0 <phase_2>:
    1ce0:	55                   	push   %rbp
    1ce1:	53                   	push   %rbx
    1ce2:	48 83 ec 38          	sub    $0x38,%rsp
    1ce6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ced:	00 00 
    1cef:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1cf4:	31 c0                	xor    %eax,%eax
    1cf6:	48 89 e6             	mov    %rsp,%rsi
    1cf9:	e8 f3 08 00 00       	call   25f1 <read_eight_numbers>
    1cfe:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1d02:	78 0a                	js     1d0e <phase_2+0x2e>
    1d04:	bb 02 00 00 00       	mov    $0x2,%ebx
    1d09:	48 89 e5             	mov    %rsp,%rbp
    1d0c:	eb 11                	jmp    1d1f <phase_2+0x3f>
    1d0e:	e8 61 08 00 00       	call   2574 <explode_bomb>
    1d13:	eb ef                	jmp    1d04 <phase_2+0x24>
    1d15:	48 83 c3 01          	add    $0x1,%rbx
    1d19:	48 83 fb 08          	cmp    $0x8,%rbx
    1d1d:	74 1f                	je     1d3e <phase_2+0x5e>
    1d1f:	89 da                	mov    %ebx,%edx
    1d21:	0f af 54 9d fc       	imul   -0x4(%rbp,%rbx,4),%edx
    1d26:	89 d0                	mov    %edx,%eax
    1d28:	c1 e8 1f             	shr    $0x1f,%eax
    1d2b:	01 d0                	add    %edx,%eax
    1d2d:	d1 f8                	sar    %eax
    1d2f:	01 d8                	add    %ebx,%eax
    1d31:	39 44 9d 00          	cmp    %eax,0x0(%rbp,%rbx,4)
    1d35:	74 de                	je     1d15 <phase_2+0x35>
    1d37:	e8 38 08 00 00       	call   2574 <explode_bomb>
    1d3c:	eb d7                	jmp    1d15 <phase_2+0x35>
    1d3e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1d43:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d4a:	00 00 
    1d4c:	75 07                	jne    1d55 <phase_2+0x75>
    1d4e:	48 83 c4 38          	add    $0x38,%rsp
    1d52:	5b                   	pop    %rbx
    1d53:	5d                   	pop    %rbp
    1d54:	c3                   	ret
    1d55:	e8 f6 fa ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000001d5a <phase_3>:
    1d5a:	48 83 ec 28          	sub    $0x28,%rsp
    1d5e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d65:	00 00 
    1d67:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1d6c:	31 c0                	xor    %eax,%eax
    1d6e:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1d73:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1d78:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1d7d:	48 8d 35 ac 1b 00 00 	lea    0x1bac(%rip),%rsi        # 3930 <array.3436+0x290>
    1d84:	e8 67 fb ff ff       	call   18f0 <__isoc99_sscanf@plt>
    1d89:	83 f8 02             	cmp    $0x2,%eax
    1d8c:	7e 1b                	jle    1da9 <phase_3+0x4f>
    1d8e:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    1d93:	77 4c                	ja     1de1 <phase_3+0x87>
    1d95:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1d99:	48 8d 15 e0 18 00 00 	lea    0x18e0(%rip),%rdx        # 3680 <_IO_stdin_used+0x1e0>
    1da0:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1da4:	48 01 d0             	add    %rdx,%rax
    1da7:	ff e0                	jmp    *%rax
    1da9:	e8 c6 07 00 00       	call   2574 <explode_bomb>
    1dae:	eb de                	jmp    1d8e <phase_3+0x34>
    1db0:	be a5 02 00 00       	mov    $0x2a5,%esi
    1db5:	eb 3b                	jmp    1df2 <phase_3+0x98>
    1db7:	be e5 01 00 00       	mov    $0x1e5,%esi
    1dbc:	eb 34                	jmp    1df2 <phase_3+0x98>
    1dbe:	be 96 02 00 00       	mov    $0x296,%esi
    1dc3:	eb 2d                	jmp    1df2 <phase_3+0x98>
    1dc5:	be 35 02 00 00       	mov    $0x235,%esi
    1dca:	eb 26                	jmp    1df2 <phase_3+0x98>
    1dcc:	be ab 01 00 00       	mov    $0x1ab,%esi
    1dd1:	eb 1f                	jmp    1df2 <phase_3+0x98>
    1dd3:	be 9d 02 00 00       	mov    $0x29d,%esi
    1dd8:	eb 18                	jmp    1df2 <phase_3+0x98>
    1dda:	be a0 03 00 00       	mov    $0x3a0,%esi
    1ddf:	eb 11                	jmp    1df2 <phase_3+0x98>
    1de1:	e8 8e 07 00 00       	call   2574 <explode_bomb>
    1de6:	be 00 00 00 00       	mov    $0x0,%esi
    1deb:	eb 05                	jmp    1df2 <phase_3+0x98>
    1ded:	be 5d 03 00 00       	mov    $0x35d,%esi
    1df2:	8b 54 24 10          	mov    0x10(%rsp),%edx
    1df6:	8b 7c 24 14          	mov    0x14(%rsp),%edi
    1dfa:	e8 fe 03 00 00       	call   21fd <check_substraction_equal>
    1dff:	85 c0                	test   %eax,%eax
    1e01:	74 15                	je     1e18 <phase_3+0xbe>
    1e03:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1e08:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1e0f:	00 00 
    1e11:	75 0c                	jne    1e1f <phase_3+0xc5>
    1e13:	48 83 c4 28          	add    $0x28,%rsp
    1e17:	c3                   	ret
    1e18:	e8 57 07 00 00       	call   2574 <explode_bomb>
    1e1d:	eb e4                	jmp    1e03 <phase_3+0xa9>
    1e1f:	e8 2c fa ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000001e24 <func4>:
    1e24:	89 f0                	mov    %esi,%eax
    1e26:	39 f7                	cmp    %esi,%edi
    1e28:	74 1d                	je     1e47 <func4+0x23>
    1e2a:	48 83 ec 08          	sub    $0x8,%rsp
    1e2e:	39 f7                	cmp    %esi,%edi
    1e30:	7f 0c                	jg     1e3e <func4+0x1a>
    1e32:	29 fe                	sub    %edi,%esi
    1e34:	e8 eb ff ff ff       	call   1e24 <func4>
    1e39:	48 83 c4 08          	add    $0x8,%rsp
    1e3d:	c3                   	ret
    1e3e:	29 f7                	sub    %esi,%edi
    1e40:	e8 df ff ff ff       	call   1e24 <func4>
    1e45:	eb f2                	jmp    1e39 <func4+0x15>
    1e47:	f3 c3                	repz ret

0000000000001e49 <phase_4>:
    1e49:	53                   	push   %rbx
    1e4a:	48 83 ec 10          	sub    $0x10,%rsp
    1e4e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e55:	00 00 
    1e57:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1e5c:	31 c0                	xor    %eax,%eax
    1e5e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1e63:	48 89 e2             	mov    %rsp,%rdx
    1e66:	48 8d 35 c6 1a 00 00 	lea    0x1ac6(%rip),%rsi        # 3933 <array.3436+0x293>
    1e6d:	e8 7e fa ff ff       	call   18f0 <__isoc99_sscanf@plt>
    1e72:	83 f8 02             	cmp    $0x2,%eax
    1e75:	75 0d                	jne    1e84 <phase_4+0x3b>
    1e77:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    1e7b:	7e 07                	jle    1e84 <phase_4+0x3b>
    1e7d:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1e82:	7f 05                	jg     1e89 <phase_4+0x40>
    1e84:	e8 eb 06 00 00       	call   2574 <explode_bomb>
    1e89:	81 3c 24 95 14 00 00 	cmpl   $0x1495,(%rsp)
    1e90:	7f 0a                	jg     1e9c <phase_4+0x53>
    1e92:	81 7c 24 04 95 14 00 	cmpl   $0x1495,0x4(%rsp)
    1e99:	00 
    1e9a:	7e 05                	jle    1ea1 <phase_4+0x58>
    1e9c:	e8 d3 06 00 00       	call   2574 <explode_bomb>
    1ea1:	8b 3c 24             	mov    (%rsp),%edi
    1ea4:	8b 74 24 04          	mov    0x4(%rsp),%esi
    1ea8:	89 fb                	mov    %edi,%ebx
    1eaa:	0f af de             	imul   %esi,%ebx
    1ead:	e8 72 ff ff ff       	call   1e24 <func4>
    1eb2:	89 c1                	mov    %eax,%ecx
    1eb4:	89 d8                	mov    %ebx,%eax
    1eb6:	99                   	cltd
    1eb7:	f7 f9                	idiv   %ecx
    1eb9:	3d 96 14 00 00       	cmp    $0x1496,%eax
    1ebe:	74 05                	je     1ec5 <phase_4+0x7c>
    1ec0:	e8 af 06 00 00       	call   2574 <explode_bomb>
    1ec5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1eca:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1ed1:	00 00 
    1ed3:	75 06                	jne    1edb <phase_4+0x92>
    1ed5:	48 83 c4 10          	add    $0x10,%rsp
    1ed9:	5b                   	pop    %rbx
    1eda:	c3                   	ret
    1edb:	e8 70 f9 ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000001ee0 <phase_5>:
    1ee0:	48 83 ec 18          	sub    $0x18,%rsp
    1ee4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1eeb:	00 00 
    1eed:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1ef2:	31 c0                	xor    %eax,%eax
    1ef4:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1ef9:	48 89 e2             	mov    %rsp,%rdx
    1efc:	48 8d 35 30 1a 00 00 	lea    0x1a30(%rip),%rsi        # 3933 <array.3436+0x293>
    1f03:	e8 e8 f9 ff ff       	call   18f0 <__isoc99_sscanf@plt>
    1f08:	83 f8 01             	cmp    $0x1,%eax
    1f0b:	7e 56                	jle    1f63 <phase_5+0x83>
    1f0d:	8b 34 24             	mov    (%rsp),%esi
    1f10:	83 e6 0f             	and    $0xf,%esi
    1f13:	89 34 24             	mov    %esi,(%rsp)
    1f16:	83 fe 0f             	cmp    $0xf,%esi
    1f19:	74 2e                	je     1f49 <phase_5+0x69>
    1f1b:	89 f0                	mov    %esi,%eax
    1f1d:	ba 00 00 00 00       	mov    $0x0,%edx
    1f22:	48 8d 3d 77 17 00 00 	lea    0x1777(%rip),%rdi        # 36a0 <array.3436>
    1f29:	48 63 c8             	movslq %eax,%rcx
    1f2c:	03 14 8f             	add    (%rdi,%rcx,4),%edx
    1f2f:	83 c0 01             	add    $0x1,%eax
    1f32:	83 f8 0f             	cmp    $0xf,%eax
    1f35:	75 f2                	jne    1f29 <phase_5+0x49>
    1f37:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1f3e:	83 fe 0b             	cmp    $0xb,%esi
    1f41:	75 06                	jne    1f49 <phase_5+0x69>
    1f43:	39 54 24 04          	cmp    %edx,0x4(%rsp)
    1f47:	74 05                	je     1f4e <phase_5+0x6e>
    1f49:	e8 26 06 00 00       	call   2574 <explode_bomb>
    1f4e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1f53:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1f5a:	00 00 
    1f5c:	75 0c                	jne    1f6a <phase_5+0x8a>
    1f5e:	48 83 c4 18          	add    $0x18,%rsp
    1f62:	c3                   	ret
    1f63:	e8 0c 06 00 00       	call   2574 <explode_bomb>
    1f68:	eb a3                	jmp    1f0d <phase_5+0x2d>
    1f6a:	e8 e1 f8 ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000001f6f <phase_6>:
    1f6f:	41 55                	push   %r13
    1f71:	41 54                	push   %r12
    1f73:	55                   	push   %rbp
    1f74:	53                   	push   %rbx
    1f75:	48 83 ec 68          	sub    $0x68,%rsp
    1f79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f80:	00 00 
    1f82:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1f87:	31 c0                	xor    %eax,%eax
    1f89:	49 89 e4             	mov    %rsp,%r12
    1f8c:	4c 89 e6             	mov    %r12,%rsi
    1f8f:	e8 1c 06 00 00       	call   25b0 <read_six_numbers>
    1f94:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    1f9a:	eb 25                	jmp    1fc1 <phase_6+0x52>
    1f9c:	e8 d3 05 00 00       	call   2574 <explode_bomb>
    1fa1:	eb 2d                	jmp    1fd0 <phase_6+0x61>
    1fa3:	83 c3 01             	add    $0x1,%ebx
    1fa6:	83 fb 05             	cmp    $0x5,%ebx
    1fa9:	7f 12                	jg     1fbd <phase_6+0x4e>
    1fab:	48 63 c3             	movslq %ebx,%rax
    1fae:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1fb1:	39 45 00             	cmp    %eax,0x0(%rbp)
    1fb4:	75 ed                	jne    1fa3 <phase_6+0x34>
    1fb6:	e8 b9 05 00 00       	call   2574 <explode_bomb>
    1fbb:	eb e6                	jmp    1fa3 <phase_6+0x34>
    1fbd:	49 83 c4 04          	add    $0x4,%r12
    1fc1:	4c 89 e5             	mov    %r12,%rbp
    1fc4:	41 8b 04 24          	mov    (%r12),%eax
    1fc8:	83 e8 01             	sub    $0x1,%eax
    1fcb:	83 f8 05             	cmp    $0x5,%eax
    1fce:	77 cc                	ja     1f9c <phase_6+0x2d>
    1fd0:	41 83 c5 01          	add    $0x1,%r13d
    1fd4:	41 83 fd 06          	cmp    $0x6,%r13d
    1fd8:	74 35                	je     200f <phase_6+0xa0>
    1fda:	44 89 eb             	mov    %r13d,%ebx
    1fdd:	eb cc                	jmp    1fab <phase_6+0x3c>
    1fdf:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1fe3:	83 c0 01             	add    $0x1,%eax
    1fe6:	39 c8                	cmp    %ecx,%eax
    1fe8:	75 f5                	jne    1fdf <phase_6+0x70>
    1fea:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1fef:	48 83 c6 01          	add    $0x1,%rsi
    1ff3:	48 83 fe 06          	cmp    $0x6,%rsi
    1ff7:	74 1d                	je     2016 <phase_6+0xa7>
    1ff9:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1ffc:	b8 01 00 00 00       	mov    $0x1,%eax
    2001:	48 8d 15 28 32 20 00 	lea    0x203228(%rip),%rdx        # 205230 <node1>
    2008:	83 f9 01             	cmp    $0x1,%ecx
    200b:	7f d2                	jg     1fdf <phase_6+0x70>
    200d:	eb db                	jmp    1fea <phase_6+0x7b>
    200f:	be 00 00 00 00       	mov    $0x0,%esi
    2014:	eb e3                	jmp    1ff9 <phase_6+0x8a>
    2016:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    201b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    2020:	48 89 43 08          	mov    %rax,0x8(%rbx)
    2024:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    2029:	48 89 50 08          	mov    %rdx,0x8(%rax)
    202d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    2032:	48 89 42 08          	mov    %rax,0x8(%rdx)
    2036:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    203b:	48 89 50 08          	mov    %rdx,0x8(%rax)
    203f:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    2044:	48 89 42 08          	mov    %rax,0x8(%rdx)
    2048:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    204f:	00 
    2050:	bd 00 00 00 00       	mov    $0x0,%ebp
    2055:	eb 16                	jmp    206d <phase_6+0xfe>
    2057:	48 8b 43 08          	mov    0x8(%rbx),%rax
    205b:	8b 00                	mov    (%rax),%eax
    205d:	39 03                	cmp    %eax,(%rbx)
    205f:	7f 23                	jg     2084 <phase_6+0x115>
    2061:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2065:	83 c5 01             	add    $0x1,%ebp
    2068:	83 fd 05             	cmp    $0x5,%ebp
    206b:	74 1e                	je     208b <phase_6+0x11c>
    206d:	40 f6 c5 01          	test   $0x1,%bpl
    2071:	75 e4                	jne    2057 <phase_6+0xe8>
    2073:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2077:	8b 00                	mov    (%rax),%eax
    2079:	39 03                	cmp    %eax,(%rbx)
    207b:	7d e4                	jge    2061 <phase_6+0xf2>
    207d:	e8 f2 04 00 00       	call   2574 <explode_bomb>
    2082:	eb dd                	jmp    2061 <phase_6+0xf2>
    2084:	e8 eb 04 00 00       	call   2574 <explode_bomb>
    2089:	eb d6                	jmp    2061 <phase_6+0xf2>
    208b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    2090:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2097:	00 00 
    2099:	75 0b                	jne    20a6 <phase_6+0x137>
    209b:	48 83 c4 68          	add    $0x68,%rsp
    209f:	5b                   	pop    %rbx
    20a0:	5d                   	pop    %rbp
    20a1:	41 5c                	pop    %r12
    20a3:	41 5d                	pop    %r13
    20a5:	c3                   	ret
    20a6:	e8 a5 f7 ff ff       	call   1850 <__stack_chk_fail@plt>

00000000000020ab <fun7>:
    20ab:	48 85 ff             	test   %rdi,%rdi
    20ae:	74 34                	je     20e4 <fun7+0x39>
    20b0:	48 83 ec 08          	sub    $0x8,%rsp
    20b4:	8b 17                	mov    (%rdi),%edx
    20b6:	39 f2                	cmp    %esi,%edx
    20b8:	7f 0e                	jg     20c8 <fun7+0x1d>
    20ba:	b8 00 00 00 00       	mov    $0x0,%eax
    20bf:	39 f2                	cmp    %esi,%edx
    20c1:	75 12                	jne    20d5 <fun7+0x2a>
    20c3:	48 83 c4 08          	add    $0x8,%rsp
    20c7:	c3                   	ret
    20c8:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    20cc:	e8 da ff ff ff       	call   20ab <fun7>
    20d1:	01 c0                	add    %eax,%eax
    20d3:	eb ee                	jmp    20c3 <fun7+0x18>
    20d5:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    20d9:	e8 cd ff ff ff       	call   20ab <fun7>
    20de:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    20e2:	eb df                	jmp    20c3 <fun7+0x18>
    20e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    20e9:	c3                   	ret

00000000000020ea <secret_phase>:
    20ea:	53                   	push   %rbx
    20eb:	e8 4c 05 00 00       	call   263c <read_line>
    20f0:	ba 0a 00 00 00       	mov    $0xa,%edx
    20f5:	be 00 00 00 00       	mov    $0x0,%esi
    20fa:	48 89 c7             	mov    %rax,%rdi
    20fd:	e8 ce f7 ff ff       	call   18d0 <strtol@plt>
    2102:	48 89 c3             	mov    %rax,%rbx
    2105:	8d 40 ff             	lea    -0x1(%rax),%eax
    2108:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    210d:	77 2b                	ja     213a <secret_phase+0x50>
    210f:	89 de                	mov    %ebx,%esi
    2111:	48 8d 3d 38 30 20 00 	lea    0x203038(%rip),%rdi        # 205150 <n1>
    2118:	e8 8e ff ff ff       	call   20ab <fun7>
    211d:	83 f8 05             	cmp    $0x5,%eax
    2120:	74 05                	je     2127 <secret_phase+0x3d>
    2122:	e8 4d 04 00 00       	call   2574 <explode_bomb>
    2127:	48 8d 3d 22 15 00 00 	lea    0x1522(%rip),%rdi        # 3650 <_IO_stdin_used+0x1b0>
    212e:	e8 fd f6 ff ff       	call   1830 <puts@plt>
    2133:	e8 48 06 00 00       	call   2780 <phase_defused>
    2138:	5b                   	pop    %rbx
    2139:	c3                   	ret
    213a:	e8 35 04 00 00       	call   2574 <explode_bomb>
    213f:	eb ce                	jmp    210f <secret_phase+0x25>

0000000000002141 <sig_handler>:
    2141:	48 83 ec 08          	sub    $0x8,%rsp
    2145:	48 8d 3d 94 15 00 00 	lea    0x1594(%rip),%rdi        # 36e0 <array.3436+0x40>
    214c:	e8 df f6 ff ff       	call   1830 <puts@plt>
    2151:	bf 03 00 00 00       	mov    $0x3,%edi
    2156:	e8 05 f8 ff ff       	call   1960 <sleep@plt>
    215b:	48 8d 35 47 17 00 00 	lea    0x1747(%rip),%rsi        # 38a9 <array.3436+0x209>
    2162:	bf 01 00 00 00       	mov    $0x1,%edi
    2167:	b8 00 00 00 00       	mov    $0x0,%eax
    216c:	e8 8f f7 ff ff       	call   1900 <__printf_chk@plt>
    2171:	48 8b 3d 08 35 20 00 	mov    0x203508(%rip),%rdi        # 205680 <stdout@GLIBC_2.2.5>
    2178:	e8 63 f7 ff ff       	call   18e0 <fflush@plt>
    217d:	bf 01 00 00 00       	mov    $0x1,%edi
    2182:	e8 d9 f7 ff ff       	call   1960 <sleep@plt>
    2187:	48 8d 3d 23 17 00 00 	lea    0x1723(%rip),%rdi        # 38b1 <array.3436+0x211>
    218e:	e8 9d f6 ff ff       	call   1830 <puts@plt>
    2193:	bf 10 00 00 00       	mov    $0x10,%edi
    2198:	e8 93 f7 ff ff       	call   1930 <exit@plt>

000000000000219d <invalid_phase>:
    219d:	48 83 ec 08          	sub    $0x8,%rsp
    21a1:	48 89 fa             	mov    %rdi,%rdx
    21a4:	48 8d 35 0e 17 00 00 	lea    0x170e(%rip),%rsi        # 38b9 <array.3436+0x219>
    21ab:	bf 01 00 00 00       	mov    $0x1,%edi
    21b0:	b8 00 00 00 00       	mov    $0x0,%eax
    21b5:	e8 46 f7 ff ff       	call   1900 <__printf_chk@plt>
    21ba:	bf 08 00 00 00       	mov    $0x8,%edi
    21bf:	e8 6c f7 ff ff       	call   1930 <exit@plt>

00000000000021c4 <string_length>:
    21c4:	80 3f 00             	cmpb   $0x0,(%rdi)
    21c7:	74 12                	je     21db <string_length+0x17>
    21c9:	48 89 fa             	mov    %rdi,%rdx
    21cc:	48 83 c2 01          	add    $0x1,%rdx
    21d0:	89 d0                	mov    %edx,%eax
    21d2:	29 f8                	sub    %edi,%eax
    21d4:	80 3a 00             	cmpb   $0x0,(%rdx)
    21d7:	75 f3                	jne    21cc <string_length+0x8>
    21d9:	f3 c3                	repz ret
    21db:	b8 00 00 00 00       	mov    $0x0,%eax
    21e0:	c3                   	ret

00000000000021e1 <check_division_equal>:
    21e1:	89 f8                	mov    %edi,%eax
    21e3:	89 d1                	mov    %edx,%ecx
    21e5:	99                   	cltd
    21e6:	f7 fe                	idiv   %esi
    21e8:	39 c8                	cmp    %ecx,%eax
    21ea:	0f 94 c0             	sete   %al
    21ed:	0f b6 c0             	movzbl %al,%eax
    21f0:	c3                   	ret

00000000000021f1 <check_multiplication_equal>:
    21f1:	0f af fe             	imul   %esi,%edi
    21f4:	39 d7                	cmp    %edx,%edi
    21f6:	0f 94 c0             	sete   %al
    21f9:	0f b6 c0             	movzbl %al,%eax
    21fc:	c3                   	ret

00000000000021fd <check_substraction_equal>:
    21fd:	29 f7                	sub    %esi,%edi
    21ff:	39 d7                	cmp    %edx,%edi
    2201:	0f 94 c0             	sete   %al
    2204:	0f b6 c0             	movzbl %al,%eax
    2207:	c3                   	ret

0000000000002208 <reverse_string>:
    2208:	48 89 fe             	mov    %rdi,%rsi
    220b:	48 85 ff             	test   %rdi,%rdi
    220e:	74 40                	je     2250 <reverse_string+0x48>
    2210:	80 3f 00             	cmpb   $0x0,(%rdi)
    2213:	74 3b                	je     2250 <reverse_string+0x48>
    2215:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    221c:	b8 00 00 00 00       	mov    $0x0,%eax
    2221:	f2 ae                	repnz scas %es:(%rdi),%al
    2223:	48 89 ca             	mov    %rcx,%rdx
    2226:	48 f7 d2             	not    %rdx
    2229:	48 8d 4c 16 fe       	lea    -0x2(%rsi,%rdx,1),%rcx
    222e:	48 39 ce             	cmp    %rcx,%rsi
    2231:	73 1d                	jae    2250 <reverse_string+0x48>
    2233:	48 89 f2             	mov    %rsi,%rdx
    2236:	0f b6 02             	movzbl (%rdx),%eax
    2239:	32 01                	xor    (%rcx),%al
    223b:	88 02                	mov    %al,(%rdx)
    223d:	32 01                	xor    (%rcx),%al
    223f:	88 01                	mov    %al,(%rcx)
    2241:	30 02                	xor    %al,(%rdx)
    2243:	48 83 c2 01          	add    $0x1,%rdx
    2247:	48 83 e9 01          	sub    $0x1,%rcx
    224b:	48 39 ca             	cmp    %rcx,%rdx
    224e:	72 e6                	jb     2236 <reverse_string+0x2e>
    2250:	48 89 f0             	mov    %rsi,%rax
    2253:	c3                   	ret

0000000000002254 <strings_not_equal>:
    2254:	41 54                	push   %r12
    2256:	55                   	push   %rbp
    2257:	53                   	push   %rbx
    2258:	48 89 fb             	mov    %rdi,%rbx
    225b:	48 89 f5             	mov    %rsi,%rbp
    225e:	e8 61 ff ff ff       	call   21c4 <string_length>
    2263:	41 89 c4             	mov    %eax,%r12d
    2266:	48 89 ef             	mov    %rbp,%rdi
    2269:	e8 56 ff ff ff       	call   21c4 <string_length>
    226e:	ba 01 00 00 00       	mov    $0x1,%edx
    2273:	41 39 c4             	cmp    %eax,%r12d
    2276:	74 07                	je     227f <strings_not_equal+0x2b>
    2278:	89 d0                	mov    %edx,%eax
    227a:	5b                   	pop    %rbx
    227b:	5d                   	pop    %rbp
    227c:	41 5c                	pop    %r12
    227e:	c3                   	ret
    227f:	0f b6 03             	movzbl (%rbx),%eax
    2282:	84 c0                	test   %al,%al
    2284:	74 27                	je     22ad <strings_not_equal+0x59>
    2286:	3a 45 00             	cmp    0x0(%rbp),%al
    2289:	75 29                	jne    22b4 <strings_not_equal+0x60>
    228b:	48 83 c3 01          	add    $0x1,%rbx
    228f:	48 83 c5 01          	add    $0x1,%rbp
    2293:	0f b6 03             	movzbl (%rbx),%eax
    2296:	84 c0                	test   %al,%al
    2298:	74 0c                	je     22a6 <strings_not_equal+0x52>
    229a:	38 45 00             	cmp    %al,0x0(%rbp)
    229d:	74 ec                	je     228b <strings_not_equal+0x37>
    229f:	ba 01 00 00 00       	mov    $0x1,%edx
    22a4:	eb d2                	jmp    2278 <strings_not_equal+0x24>
    22a6:	ba 00 00 00 00       	mov    $0x0,%edx
    22ab:	eb cb                	jmp    2278 <strings_not_equal+0x24>
    22ad:	ba 00 00 00 00       	mov    $0x0,%edx
    22b2:	eb c4                	jmp    2278 <strings_not_equal+0x24>
    22b4:	ba 01 00 00 00       	mov    $0x1,%edx
    22b9:	eb bd                	jmp    2278 <strings_not_equal+0x24>

00000000000022bb <from_char_to_int>:
    22bb:	40 0f be c7          	movsbl %dil,%eax
    22bf:	40 80 ff 69          	cmp    $0x69,%dil
    22c3:	7f 0e                	jg     22d3 <from_char_to_int+0x18>
    22c5:	83 ef 33             	sub    $0x33,%edi
    22c8:	8d 50 fd             	lea    -0x3(%rax),%edx
    22cb:	40 80 ff 0a          	cmp    $0xa,%dil
    22cf:	0f 42 c2             	cmovb  %edx,%eax
    22d2:	c3                   	ret
    22d3:	83 e8 09             	sub    $0x9,%eax
    22d6:	c3                   	ret

00000000000022d7 <initialize_bomb>:
    22d7:	55                   	push   %rbp
    22d8:	53                   	push   %rbx
    22d9:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    22e0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    22e7:	00 00 
    22e9:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    22f0:	00 
    22f1:	31 c0                	xor    %eax,%eax
    22f3:	48 8d 35 47 fe ff ff 	lea    -0x1b9(%rip),%rsi        # 2141 <sig_handler>
    22fa:	bf 02 00 00 00       	mov    $0x2,%edi
    22ff:	e8 9c f5 ff ff       	call   18a0 <signal@plt>
    2304:	48 89 e7             	mov    %rsp,%rdi
    2307:	be 40 00 00 00       	mov    $0x40,%esi
    230c:	e8 0f f6 ff ff       	call   1920 <gethostname@plt>
    2311:	85 c0                	test   %eax,%eax
    2313:	75 45                	jne    235a <initialize_bomb+0x83>
    2315:	48 8b 3d 64 2f 20 00 	mov    0x202f64(%rip),%rdi        # 205280 <host_table>
    231c:	48 8d 1d 65 2f 20 00 	lea    0x202f65(%rip),%rbx        # 205288 <host_table+0x8>
    2323:	48 89 e5             	mov    %rsp,%rbp
    2326:	48 85 ff             	test   %rdi,%rdi
    2329:	74 19                	je     2344 <initialize_bomb+0x6d>
    232b:	48 89 ee             	mov    %rbp,%rsi
    232e:	e8 cd f4 ff ff       	call   1800 <strcasecmp@plt>
    2333:	85 c0                	test   %eax,%eax
    2335:	74 5e                	je     2395 <initialize_bomb+0xbe>
    2337:	48 83 c3 08          	add    $0x8,%rbx
    233b:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    233f:	48 85 ff             	test   %rdi,%rdi
    2342:	75 e7                	jne    232b <initialize_bomb+0x54>
    2344:	48 8d 3d 05 14 00 00 	lea    0x1405(%rip),%rdi        # 3750 <array.3436+0xb0>
    234b:	e8 e0 f4 ff ff       	call   1830 <puts@plt>
    2350:	bf 08 00 00 00       	mov    $0x8,%edi
    2355:	e8 d6 f5 ff ff       	call   1930 <exit@plt>
    235a:	48 8d 3d b7 13 00 00 	lea    0x13b7(%rip),%rdi        # 3718 <array.3436+0x78>
    2361:	e8 ca f4 ff ff       	call   1830 <puts@plt>
    2366:	bf 08 00 00 00       	mov    $0x8,%edi
    236b:	e8 c0 f5 ff ff       	call   1930 <exit@plt>
    2370:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2375:	48 8d 35 4e 15 00 00 	lea    0x154e(%rip),%rsi        # 38ca <array.3436+0x22a>
    237c:	bf 01 00 00 00       	mov    $0x1,%edi
    2381:	b8 00 00 00 00       	mov    $0x0,%eax
    2386:	e8 75 f5 ff ff       	call   1900 <__printf_chk@plt>
    238b:	bf 08 00 00 00       	mov    $0x8,%edi
    2390:	e8 9b f5 ff ff       	call   1930 <exit@plt>
    2395:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    239a:	e8 fd 0d 00 00       	call   319c <init_driver>
    239f:	85 c0                	test   %eax,%eax
    23a1:	78 cd                	js     2370 <initialize_bomb+0x99>
    23a3:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    23aa:	00 
    23ab:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    23b2:	00 00 
    23b4:	75 0a                	jne    23c0 <initialize_bomb+0xe9>
    23b6:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    23bd:	5b                   	pop    %rbx
    23be:	5d                   	pop    %rbp
    23bf:	c3                   	ret
    23c0:	e8 8b f4 ff ff       	call   1850 <__stack_chk_fail@plt>

00000000000023c5 <initialize_bomb_solve>:
    23c5:	f3 c3                	repz ret

00000000000023c7 <blank_line>:
    23c7:	55                   	push   %rbp
    23c8:	53                   	push   %rbx
    23c9:	48 83 ec 08          	sub    $0x8,%rsp
    23cd:	48 89 fd             	mov    %rdi,%rbp
    23d0:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    23d4:	84 db                	test   %bl,%bl
    23d6:	74 1e                	je     23f6 <blank_line+0x2f>
    23d8:	e8 93 f5 ff ff       	call   1970 <__ctype_b_loc@plt>
    23dd:	48 83 c5 01          	add    $0x1,%rbp
    23e1:	48 0f be db          	movsbq %bl,%rbx
    23e5:	48 8b 00             	mov    (%rax),%rax
    23e8:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    23ed:	75 e1                	jne    23d0 <blank_line+0x9>
    23ef:	b8 00 00 00 00       	mov    $0x0,%eax
    23f4:	eb 05                	jmp    23fb <blank_line+0x34>
    23f6:	b8 01 00 00 00       	mov    $0x1,%eax
    23fb:	48 83 c4 08          	add    $0x8,%rsp
    23ff:	5b                   	pop    %rbx
    2400:	5d                   	pop    %rbp
    2401:	c3                   	ret

0000000000002402 <skip>:
    2402:	55                   	push   %rbp
    2403:	53                   	push   %rbx
    2404:	48 83 ec 08          	sub    $0x8,%rsp
    2408:	48 8d 2d b1 32 20 00 	lea    0x2032b1(%rip),%rbp        # 2056c0 <input_strings>
    240f:	48 63 05 96 32 20 00 	movslq 0x203296(%rip),%rax        # 2056ac <num_input_strings>
    2416:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    241a:	48 c1 e7 04          	shl    $0x4,%rdi
    241e:	48 01 ef             	add    %rbp,%rdi
    2421:	48 8b 15 88 32 20 00 	mov    0x203288(%rip),%rdx        # 2056b0 <infile>
    2428:	be 50 00 00 00       	mov    $0x50,%esi
    242d:	e8 5e f4 ff ff       	call   1890 <fgets@plt>
    2432:	48 89 c3             	mov    %rax,%rbx
    2435:	48 85 c0             	test   %rax,%rax
    2438:	74 0c                	je     2446 <skip+0x44>
    243a:	48 89 c7             	mov    %rax,%rdi
    243d:	e8 85 ff ff ff       	call   23c7 <blank_line>
    2442:	85 c0                	test   %eax,%eax
    2444:	75 c9                	jne    240f <skip+0xd>
    2446:	48 89 d8             	mov    %rbx,%rax
    2449:	48 83 c4 08          	add    $0x8,%rsp
    244d:	5b                   	pop    %rbx
    244e:	5d                   	pop    %rbp
    244f:	c3                   	ret

0000000000002450 <send_msg>:
    2450:	53                   	push   %rbx
    2451:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    2458:	41 89 f8             	mov    %edi,%r8d
    245b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2462:	00 00 
    2464:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    246b:	00 
    246c:	31 c0                	xor    %eax,%eax
    246e:	8b 35 38 32 20 00    	mov    0x203238(%rip),%esi        # 2056ac <num_input_strings>
    2474:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2477:	48 98                	cltq
    2479:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    247d:	48 c1 e2 04          	shl    $0x4,%rdx
    2481:	48 8d 05 38 32 20 00 	lea    0x203238(%rip),%rax        # 2056c0 <input_strings>
    2488:	48 01 c2             	add    %rax,%rdx
    248b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2492:	b8 00 00 00 00       	mov    $0x0,%eax
    2497:	48 89 d7             	mov    %rdx,%rdi
    249a:	f2 ae                	repnz scas %es:(%rdi),%al
    249c:	48 89 c8             	mov    %rcx,%rax
    249f:	48 f7 d0             	not    %rax
    24a2:	48 83 c0 63          	add    $0x63,%rax
    24a6:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    24ac:	0f 87 86 00 00 00    	ja     2538 <send_msg+0xe8>
    24b2:	45 85 c0             	test   %r8d,%r8d
    24b5:	4c 8d 0d 28 14 00 00 	lea    0x1428(%rip),%r9        # 38e4 <array.3436+0x244>
    24bc:	48 8d 05 29 14 00 00 	lea    0x1429(%rip),%rax        # 38ec <array.3436+0x24c>
    24c3:	4c 0f 44 c8          	cmove  %rax,%r9
    24c7:	48 89 e3             	mov    %rsp,%rbx
    24ca:	52                   	push   %rdx
    24cb:	56                   	push   %rsi
    24cc:	44 8b 05 6d 2c 20 00 	mov    0x202c6d(%rip),%r8d        # 205140 <bomb_id>
    24d3:	48 8d 0d 1b 14 00 00 	lea    0x141b(%rip),%rcx        # 38f5 <array.3436+0x255>
    24da:	ba 00 20 00 00       	mov    $0x2000,%edx
    24df:	be 01 00 00 00       	mov    $0x1,%esi
    24e4:	48 89 df             	mov    %rbx,%rdi
    24e7:	b8 00 00 00 00       	mov    $0x0,%eax
    24ec:	e8 8f f4 ff ff       	call   1980 <__sprintf_chk@plt>
    24f1:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    24f8:	00 
    24f9:	b9 00 00 00 00       	mov    $0x0,%ecx
    24fe:	48 89 da             	mov    %rbx,%rdx
    2501:	48 8d 35 18 2c 20 00 	lea    0x202c18(%rip),%rsi        # 205120 <user_password>
    2508:	48 8d 3d 29 2c 20 00 	lea    0x202c29(%rip),%rdi        # 205138 <userid>
    250f:	e8 91 0e 00 00       	call   33a5 <driver_post>
    2514:	48 83 c4 10          	add    $0x10,%rsp
    2518:	85 c0                	test   %eax,%eax
    251a:	78 3c                	js     2558 <send_msg+0x108>
    251c:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    2523:	00 
    2524:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    252b:	00 00 
    252d:	75 40                	jne    256f <send_msg+0x11f>
    252f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    2536:	5b                   	pop    %rbx
    2537:	c3                   	ret
    2538:	48 8d 35 49 12 00 00 	lea    0x1249(%rip),%rsi        # 3788 <array.3436+0xe8>
    253f:	bf 01 00 00 00       	mov    $0x1,%edi
    2544:	b8 00 00 00 00       	mov    $0x0,%eax
    2549:	e8 b2 f3 ff ff       	call   1900 <__printf_chk@plt>
    254e:	bf 08 00 00 00       	mov    $0x8,%edi
    2553:	e8 d8 f3 ff ff       	call   1930 <exit@plt>
    2558:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    255f:	00 
    2560:	e8 cb f2 ff ff       	call   1830 <puts@plt>
    2565:	bf 00 00 00 00       	mov    $0x0,%edi
    256a:	e8 c1 f3 ff ff       	call   1930 <exit@plt>
    256f:	e8 dc f2 ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000002574 <explode_bomb>:
    2574:	48 83 ec 08          	sub    $0x8,%rsp
    2578:	48 8d 3d 82 13 00 00 	lea    0x1382(%rip),%rdi        # 3901 <array.3436+0x261>
    257f:	e8 ac f2 ff ff       	call   1830 <puts@plt>
    2584:	48 8d 3d 7f 13 00 00 	lea    0x137f(%rip),%rdi        # 390a <array.3436+0x26a>
    258b:	e8 a0 f2 ff ff       	call   1830 <puts@plt>
    2590:	bf 00 00 00 00       	mov    $0x0,%edi
    2595:	e8 b6 fe ff ff       	call   2450 <send_msg>
    259a:	48 8d 3d 0f 12 00 00 	lea    0x120f(%rip),%rdi        # 37b0 <array.3436+0x110>
    25a1:	e8 8a f2 ff ff       	call   1830 <puts@plt>
    25a6:	bf 08 00 00 00       	mov    $0x8,%edi
    25ab:	e8 80 f3 ff ff       	call   1930 <exit@plt>

00000000000025b0 <read_six_numbers>:
    25b0:	48 83 ec 08          	sub    $0x8,%rsp
    25b4:	48 89 f2             	mov    %rsi,%rdx
    25b7:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    25bb:	48 8d 46 14          	lea    0x14(%rsi),%rax
    25bf:	50                   	push   %rax
    25c0:	48 8d 46 10          	lea    0x10(%rsi),%rax
    25c4:	50                   	push   %rax
    25c5:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    25c9:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    25cd:	48 8d 35 53 13 00 00 	lea    0x1353(%rip),%rsi        # 3927 <array.3436+0x287>
    25d4:	b8 00 00 00 00       	mov    $0x0,%eax
    25d9:	e8 12 f3 ff ff       	call   18f0 <__isoc99_sscanf@plt>
    25de:	48 83 c4 10          	add    $0x10,%rsp
    25e2:	83 f8 05             	cmp    $0x5,%eax
    25e5:	7e 05                	jle    25ec <read_six_numbers+0x3c>
    25e7:	48 83 c4 08          	add    $0x8,%rsp
    25eb:	c3                   	ret
    25ec:	e8 83 ff ff ff       	call   2574 <explode_bomb>

00000000000025f1 <read_eight_numbers>:
    25f1:	48 83 ec 08          	sub    $0x8,%rsp
    25f5:	48 89 f2             	mov    %rsi,%rdx
    25f8:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    25fc:	48 8d 46 1c          	lea    0x1c(%rsi),%rax
    2600:	50                   	push   %rax
    2601:	48 8d 46 18          	lea    0x18(%rsi),%rax
    2605:	50                   	push   %rax
    2606:	48 8d 46 14          	lea    0x14(%rsi),%rax
    260a:	50                   	push   %rax
    260b:	48 8d 46 10          	lea    0x10(%rsi),%rax
    260f:	50                   	push   %rax
    2610:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2614:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2618:	48 8d 35 02 13 00 00 	lea    0x1302(%rip),%rsi        # 3921 <array.3436+0x281>
    261f:	b8 00 00 00 00       	mov    $0x0,%eax
    2624:	e8 c7 f2 ff ff       	call   18f0 <__isoc99_sscanf@plt>
    2629:	48 83 c4 20          	add    $0x20,%rsp
    262d:	83 f8 07             	cmp    $0x7,%eax
    2630:	7e 05                	jle    2637 <read_eight_numbers+0x46>
    2632:	48 83 c4 08          	add    $0x8,%rsp
    2636:	c3                   	ret
    2637:	e8 38 ff ff ff       	call   2574 <explode_bomb>

000000000000263c <read_line>:
    263c:	48 83 ec 08          	sub    $0x8,%rsp
    2640:	b8 00 00 00 00       	mov    $0x0,%eax
    2645:	e8 b8 fd ff ff       	call   2402 <skip>
    264a:	48 85 c0             	test   %rax,%rax
    264d:	74 6f                	je     26be <read_line+0x82>
    264f:	8b 35 57 30 20 00    	mov    0x203057(%rip),%esi        # 2056ac <num_input_strings>
    2655:	48 63 c6             	movslq %esi,%rax
    2658:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    265c:	48 c1 e2 04          	shl    $0x4,%rdx
    2660:	48 8d 05 59 30 20 00 	lea    0x203059(%rip),%rax        # 2056c0 <input_strings>
    2667:	48 01 c2             	add    %rax,%rdx
    266a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2671:	b8 00 00 00 00       	mov    $0x0,%eax
    2676:	48 89 d7             	mov    %rdx,%rdi
    2679:	f2 ae                	repnz scas %es:(%rdi),%al
    267b:	48 f7 d1             	not    %rcx
    267e:	48 83 e9 01          	sub    $0x1,%rcx
    2682:	83 f9 4e             	cmp    $0x4e,%ecx
    2685:	0f 8f ab 00 00 00    	jg     2736 <read_line+0xfa>
    268b:	83 e9 01             	sub    $0x1,%ecx
    268e:	48 63 c9             	movslq %ecx,%rcx
    2691:	48 63 c6             	movslq %esi,%rax
    2694:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    2698:	48 c1 e0 04          	shl    $0x4,%rax
    269c:	48 89 c7             	mov    %rax,%rdi
    269f:	48 8d 05 1a 30 20 00 	lea    0x20301a(%rip),%rax        # 2056c0 <input_strings>
    26a6:	48 01 f8             	add    %rdi,%rax
    26a9:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    26ad:	83 c6 01             	add    $0x1,%esi
    26b0:	89 35 f6 2f 20 00    	mov    %esi,0x202ff6(%rip)        # 2056ac <num_input_strings>
    26b6:	48 89 d0             	mov    %rdx,%rax
    26b9:	48 83 c4 08          	add    $0x8,%rsp
    26bd:	c3                   	ret
    26be:	48 8b 05 cb 2f 20 00 	mov    0x202fcb(%rip),%rax        # 205690 <stdin@GLIBC_2.2.5>
    26c5:	48 39 05 e4 2f 20 00 	cmp    %rax,0x202fe4(%rip)        # 2056b0 <infile>
    26cc:	74 1b                	je     26e9 <read_line+0xad>
    26ce:	48 8d 3d 82 12 00 00 	lea    0x1282(%rip),%rdi        # 3957 <array.3436+0x2b7>
    26d5:	e8 16 f1 ff ff       	call   17f0 <getenv@plt>
    26da:	48 85 c0             	test   %rax,%rax
    26dd:	74 20                	je     26ff <read_line+0xc3>
    26df:	bf 00 00 00 00       	mov    $0x0,%edi
    26e4:	e8 47 f2 ff ff       	call   1930 <exit@plt>
    26e9:	48 8d 3d 49 12 00 00 	lea    0x1249(%rip),%rdi        # 3939 <array.3436+0x299>
    26f0:	e8 3b f1 ff ff       	call   1830 <puts@plt>
    26f5:	bf 08 00 00 00       	mov    $0x8,%edi
    26fa:	e8 31 f2 ff ff       	call   1930 <exit@plt>
    26ff:	48 8b 05 8a 2f 20 00 	mov    0x202f8a(%rip),%rax        # 205690 <stdin@GLIBC_2.2.5>
    2706:	48 89 05 a3 2f 20 00 	mov    %rax,0x202fa3(%rip)        # 2056b0 <infile>
    270d:	b8 00 00 00 00       	mov    $0x0,%eax
    2712:	e8 eb fc ff ff       	call   2402 <skip>
    2717:	48 85 c0             	test   %rax,%rax
    271a:	0f 85 2f ff ff ff    	jne    264f <read_line+0x13>
    2720:	48 8d 3d 12 12 00 00 	lea    0x1212(%rip),%rdi        # 3939 <array.3436+0x299>
    2727:	e8 04 f1 ff ff       	call   1830 <puts@plt>
    272c:	bf 00 00 00 00       	mov    $0x0,%edi
    2731:	e8 fa f1 ff ff       	call   1930 <exit@plt>
    2736:	48 8d 3d 25 12 00 00 	lea    0x1225(%rip),%rdi        # 3962 <array.3436+0x2c2>
    273d:	e8 ee f0 ff ff       	call   1830 <puts@plt>
    2742:	8b 05 64 2f 20 00    	mov    0x202f64(%rip),%eax        # 2056ac <num_input_strings>
    2748:	8d 50 01             	lea    0x1(%rax),%edx
    274b:	89 15 5b 2f 20 00    	mov    %edx,0x202f5b(%rip)        # 2056ac <num_input_strings>
    2751:	48 98                	cltq
    2753:	48 6b c0 50          	imul   $0x50,%rax,%rax
    2757:	48 8d 15 62 2f 20 00 	lea    0x202f62(%rip),%rdx        # 2056c0 <input_strings>
    275e:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2765:	75 6e 63 
    2768:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    276f:	2a 2a 00 
    2772:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2776:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    277b:	e8 f4 fd ff ff       	call   2574 <explode_bomb>

0000000000002780 <phase_defused>:
    2780:	48 83 ec 78          	sub    $0x78,%rsp
    2784:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    278b:	00 00 
    278d:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    2792:	31 c0                	xor    %eax,%eax
    2794:	bf 01 00 00 00       	mov    $0x1,%edi
    2799:	e8 b2 fc ff ff       	call   2450 <send_msg>
    279e:	83 3d 07 2f 20 00 06 	cmpl   $0x6,0x202f07(%rip)        # 2056ac <num_input_strings>
    27a5:	74 19                	je     27c0 <phase_defused+0x40>
    27a7:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    27ac:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    27b3:	00 00 
    27b5:	0f 85 84 00 00 00    	jne    283f <phase_defused+0xbf>
    27bb:	48 83 c4 78          	add    $0x78,%rsp
    27bf:	c3                   	ret
    27c0:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    27c5:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    27ca:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    27cf:	48 8d 35 a7 11 00 00 	lea    0x11a7(%rip),%rsi        # 397d <array.3436+0x2dd>
    27d6:	48 8d 3d d3 2f 20 00 	lea    0x202fd3(%rip),%rdi        # 2057b0 <input_strings+0xf0>
    27dd:	b8 00 00 00 00       	mov    $0x0,%eax
    27e2:	e8 09 f1 ff ff       	call   18f0 <__isoc99_sscanf@plt>
    27e7:	83 f8 03             	cmp    $0x3,%eax
    27ea:	74 1a                	je     2806 <phase_defused+0x86>
    27ec:	48 8d 3d 45 10 00 00 	lea    0x1045(%rip),%rdi        # 3838 <array.3436+0x198>
    27f3:	e8 38 f0 ff ff       	call   1830 <puts@plt>
    27f8:	48 8d 3d 69 10 00 00 	lea    0x1069(%rip),%rdi        # 3868 <array.3436+0x1c8>
    27ff:	e8 2c f0 ff ff       	call   1830 <puts@plt>
    2804:	eb a1                	jmp    27a7 <phase_defused+0x27>
    2806:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    280b:	48 8d 35 74 11 00 00 	lea    0x1174(%rip),%rsi        # 3986 <array.3436+0x2e6>
    2812:	e8 3d fa ff ff       	call   2254 <strings_not_equal>
    2817:	85 c0                	test   %eax,%eax
    2819:	75 d1                	jne    27ec <phase_defused+0x6c>
    281b:	48 8d 3d b6 0f 00 00 	lea    0xfb6(%rip),%rdi        # 37d8 <array.3436+0x138>
    2822:	e8 09 f0 ff ff       	call   1830 <puts@plt>
    2827:	48 8d 3d d2 0f 00 00 	lea    0xfd2(%rip),%rdi        # 3800 <array.3436+0x160>
    282e:	e8 fd ef ff ff       	call   1830 <puts@plt>
    2833:	b8 00 00 00 00       	mov    $0x0,%eax
    2838:	e8 ad f8 ff ff       	call   20ea <secret_phase>
    283d:	eb ad                	jmp    27ec <phase_defused+0x6c>
    283f:	e8 0c f0 ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000002844 <sigalrm_handler>:
    2844:	48 83 ec 08          	sub    $0x8,%rsp
    2848:	b9 00 00 00 00       	mov    $0x0,%ecx
    284d:	48 8d 15 24 14 00 00 	lea    0x1424(%rip),%rdx        # 3c78 <array.3436+0x5d8>
    2854:	be 01 00 00 00       	mov    $0x1,%esi
    2859:	48 8b 3d 40 2e 20 00 	mov    0x202e40(%rip),%rdi        # 2056a0 <stderr@GLIBC_2.2.5>
    2860:	b8 00 00 00 00       	mov    $0x0,%eax
    2865:	e8 e6 f0 ff ff       	call   1950 <__fprintf_chk@plt>
    286a:	bf 01 00 00 00       	mov    $0x1,%edi
    286f:	e8 bc f0 ff ff       	call   1930 <exit@plt>

0000000000002874 <rio_readlineb>:
    2874:	41 56                	push   %r14
    2876:	41 55                	push   %r13
    2878:	41 54                	push   %r12
    287a:	55                   	push   %rbp
    287b:	53                   	push   %rbx
    287c:	48 89 fb             	mov    %rdi,%rbx
    287f:	49 89 f4             	mov    %rsi,%r12
    2882:	49 89 d6             	mov    %rdx,%r14
    2885:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    288b:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    288f:	48 83 fa 01          	cmp    $0x1,%rdx
    2893:	77 0c                	ja     28a1 <rio_readlineb+0x2d>
    2895:	eb 60                	jmp    28f7 <rio_readlineb+0x83>
    2897:	e8 74 ef ff ff       	call   1810 <__errno_location@plt>
    289c:	83 38 04             	cmpl   $0x4,(%rax)
    289f:	75 67                	jne    2908 <rio_readlineb+0x94>
    28a1:	8b 43 04             	mov    0x4(%rbx),%eax
    28a4:	85 c0                	test   %eax,%eax
    28a6:	7f 20                	jg     28c8 <rio_readlineb+0x54>
    28a8:	ba 00 20 00 00       	mov    $0x2000,%edx
    28ad:	48 89 ee             	mov    %rbp,%rsi
    28b0:	8b 3b                	mov    (%rbx),%edi
    28b2:	e8 c9 ef ff ff       	call   1880 <read@plt>
    28b7:	89 43 04             	mov    %eax,0x4(%rbx)
    28ba:	85 c0                	test   %eax,%eax
    28bc:	78 d9                	js     2897 <rio_readlineb+0x23>
    28be:	85 c0                	test   %eax,%eax
    28c0:	74 4f                	je     2911 <rio_readlineb+0x9d>
    28c2:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    28c6:	eb d9                	jmp    28a1 <rio_readlineb+0x2d>
    28c8:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    28cc:	0f b6 0a             	movzbl (%rdx),%ecx
    28cf:	48 83 c2 01          	add    $0x1,%rdx
    28d3:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    28d7:	83 e8 01             	sub    $0x1,%eax
    28da:	89 43 04             	mov    %eax,0x4(%rbx)
    28dd:	49 83 c4 01          	add    $0x1,%r12
    28e1:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    28e6:	80 f9 0a             	cmp    $0xa,%cl
    28e9:	74 0c                	je     28f7 <rio_readlineb+0x83>
    28eb:	41 83 c5 01          	add    $0x1,%r13d
    28ef:	49 63 c5             	movslq %r13d,%rax
    28f2:	4c 39 f0             	cmp    %r14,%rax
    28f5:	72 aa                	jb     28a1 <rio_readlineb+0x2d>
    28f7:	41 c6 04 24 00       	movb   $0x0,(%r12)
    28fc:	49 63 c5             	movslq %r13d,%rax
    28ff:	5b                   	pop    %rbx
    2900:	5d                   	pop    %rbp
    2901:	41 5c                	pop    %r12
    2903:	41 5d                	pop    %r13
    2905:	41 5e                	pop    %r14
    2907:	c3                   	ret
    2908:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    290f:	eb 05                	jmp    2916 <rio_readlineb+0xa2>
    2911:	b8 00 00 00 00       	mov    $0x0,%eax
    2916:	85 c0                	test   %eax,%eax
    2918:	75 0d                	jne    2927 <rio_readlineb+0xb3>
    291a:	b8 00 00 00 00       	mov    $0x0,%eax
    291f:	41 83 fd 01          	cmp    $0x1,%r13d
    2923:	75 d2                	jne    28f7 <rio_readlineb+0x83>
    2925:	eb d8                	jmp    28ff <rio_readlineb+0x8b>
    2927:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    292e:	eb cf                	jmp    28ff <rio_readlineb+0x8b>

0000000000002930 <submitr>:
    2930:	41 57                	push   %r15
    2932:	41 56                	push   %r14
    2934:	41 55                	push   %r13
    2936:	41 54                	push   %r12
    2938:	55                   	push   %rbp
    2939:	53                   	push   %rbx
    293a:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    2941:	49 89 fd             	mov    %rdi,%r13
    2944:	89 f5                	mov    %esi,%ebp
    2946:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    294b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2950:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2955:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    295a:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2961:	00 
    2962:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    2969:	00 
    296a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2971:	00 00 
    2973:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    297a:	00 
    297b:	31 c0                	xor    %eax,%eax
    297d:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2984:	00 
    2985:	ba 00 00 00 00       	mov    $0x0,%edx
    298a:	be 01 00 00 00       	mov    $0x1,%esi
    298f:	bf 02 00 00 00       	mov    $0x2,%edi
    2994:	e8 f7 ef ff ff       	call   1990 <socket@plt>
    2999:	85 c0                	test   %eax,%eax
    299b:	0f 88 35 01 00 00    	js     2ad6 <submitr+0x1a6>
    29a1:	41 89 c4             	mov    %eax,%r12d
    29a4:	4c 89 ef             	mov    %r13,%rdi
    29a7:	e8 04 ef ff ff       	call   18b0 <gethostbyname@plt>
    29ac:	48 85 c0             	test   %rax,%rax
    29af:	0f 84 71 01 00 00    	je     2b26 <submitr+0x1f6>
    29b5:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    29ba:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    29c1:	00 00 
    29c3:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    29ca:	00 
    29cb:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    29d2:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    29d9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    29dd:	48 8b 40 18          	mov    0x18(%rax),%rax
    29e1:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    29e6:	b9 0c 00 00 00       	mov    $0xc,%ecx
    29eb:	48 8b 30             	mov    (%rax),%rsi
    29ee:	e8 cd ee ff ff       	call   18c0 <__memmove_chk@plt>
    29f3:	66 c1 cd 08          	ror    $0x8,%bp
    29f7:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    29fc:	ba 10 00 00 00       	mov    $0x10,%edx
    2a01:	4c 89 ee             	mov    %r13,%rsi
    2a04:	44 89 e7             	mov    %r12d,%edi
    2a07:	e8 34 ef ff ff       	call   1940 <connect@plt>
    2a0c:	85 c0                	test   %eax,%eax
    2a0e:	0f 88 7d 01 00 00    	js     2b91 <submitr+0x261>
    2a14:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    2a1b:	b8 00 00 00 00       	mov    $0x0,%eax
    2a20:	4c 89 c9             	mov    %r9,%rcx
    2a23:	48 89 df             	mov    %rbx,%rdi
    2a26:	f2 ae                	repnz scas %es:(%rdi),%al
    2a28:	48 89 ce             	mov    %rcx,%rsi
    2a2b:	48 f7 d6             	not    %rsi
    2a2e:	4c 89 c9             	mov    %r9,%rcx
    2a31:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2a36:	f2 ae                	repnz scas %es:(%rdi),%al
    2a38:	49 89 c8             	mov    %rcx,%r8
    2a3b:	4c 89 c9             	mov    %r9,%rcx
    2a3e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2a43:	f2 ae                	repnz scas %es:(%rdi),%al
    2a45:	48 89 ca             	mov    %rcx,%rdx
    2a48:	48 f7 d2             	not    %rdx
    2a4b:	4c 89 c9             	mov    %r9,%rcx
    2a4e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2a53:	f2 ae                	repnz scas %es:(%rdi),%al
    2a55:	4c 29 c2             	sub    %r8,%rdx
    2a58:	48 29 ca             	sub    %rcx,%rdx
    2a5b:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    2a60:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    2a65:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2a6b:	0f 87 7d 01 00 00    	ja     2bee <submitr+0x2be>
    2a71:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2a78:	00 
    2a79:	b9 00 04 00 00       	mov    $0x400,%ecx
    2a7e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a83:	48 89 d7             	mov    %rdx,%rdi
    2a86:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2a89:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2a90:	48 89 df             	mov    %rbx,%rdi
    2a93:	f2 ae                	repnz scas %es:(%rdi),%al
    2a95:	48 89 ca             	mov    %rcx,%rdx
    2a98:	48 f7 d2             	not    %rdx
    2a9b:	48 89 d1             	mov    %rdx,%rcx
    2a9e:	48 83 e9 01          	sub    $0x1,%rcx
    2aa2:	85 c9                	test   %ecx,%ecx
    2aa4:	0f 84 3f 06 00 00    	je     30e9 <submitr+0x7b9>
    2aaa:	8d 41 ff             	lea    -0x1(%rcx),%eax
    2aad:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    2ab2:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2ab9:	00 
    2aba:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2ac1:	00 
    2ac2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2ac7:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    2ace:	00 20 00 
    2ad1:	e9 a6 01 00 00       	jmp    2c7c <submitr+0x34c>
    2ad6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2add:	3a 20 43 
    2ae0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ae7:	20 75 6e 
    2aea:	49 89 07             	mov    %rax,(%r15)
    2aed:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2af1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2af8:	74 6f 20 
    2afb:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2b02:	65 20 73 
    2b05:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b09:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b0d:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2b14:	65 
    2b15:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2b1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b21:	e9 9a 04 00 00       	jmp    2fc0 <submitr+0x690>
    2b26:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2b2d:	3a 20 44 
    2b30:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2b37:	20 75 6e 
    2b3a:	49 89 07             	mov    %rax,(%r15)
    2b3d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2b41:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b48:	74 6f 20 
    2b4b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2b52:	76 65 20 
    2b55:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b59:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b5d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2b64:	72 20 61 
    2b67:	49 89 47 20          	mov    %rax,0x20(%r15)
    2b6b:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2b72:	65 
    2b73:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2b7a:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2b7f:	44 89 e7             	mov    %r12d,%edi
    2b82:	e8 e9 ec ff ff       	call   1870 <close@plt>
    2b87:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b8c:	e9 2f 04 00 00       	jmp    2fc0 <submitr+0x690>
    2b91:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b98:	3a 20 55 
    2b9b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2ba2:	20 74 6f 
    2ba5:	49 89 07             	mov    %rax,(%r15)
    2ba8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2bac:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2bb3:	65 63 74 
    2bb6:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2bbd:	68 65 20 
    2bc0:	49 89 47 10          	mov    %rax,0x10(%r15)
    2bc4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2bc8:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2bcf:	76 
    2bd0:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2bd7:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2bdc:	44 89 e7             	mov    %r12d,%edi
    2bdf:	e8 8c ec ff ff       	call   1870 <close@plt>
    2be4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2be9:	e9 d2 03 00 00       	jmp    2fc0 <submitr+0x690>
    2bee:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2bf5:	3a 20 52 
    2bf8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2bff:	20 73 74 
    2c02:	49 89 07             	mov    %rax,(%r15)
    2c05:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2c09:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2c10:	74 6f 6f 
    2c13:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2c1a:	65 2e 20 
    2c1d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2c21:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2c25:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2c2c:	61 73 65 
    2c2f:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2c36:	49 54 52 
    2c39:	49 89 47 20          	mov    %rax,0x20(%r15)
    2c3d:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2c41:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2c48:	55 46 00 
    2c4b:	49 89 47 30          	mov    %rax,0x30(%r15)
    2c4f:	44 89 e7             	mov    %r12d,%edi
    2c52:	e8 19 ec ff ff       	call   1870 <close@plt>
    2c57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c5c:	e9 5f 03 00 00       	jmp    2fc0 <submitr+0x690>
    2c61:	49 0f a3 c5          	bt     %rax,%r13
    2c65:	73 21                	jae    2c88 <submitr+0x358>
    2c67:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2c6b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2c6f:	48 83 c3 01          	add    $0x1,%rbx
    2c73:	4c 39 f3             	cmp    %r14,%rbx
    2c76:	0f 84 6d 04 00 00    	je     30e9 <submitr+0x7b9>
    2c7c:	44 0f b6 03          	movzbl (%rbx),%r8d
    2c80:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2c84:	3c 35                	cmp    $0x35,%al
    2c86:	76 d9                	jbe    2c61 <submitr+0x331>
    2c88:	44 89 c0             	mov    %r8d,%eax
    2c8b:	83 e0 df             	and    $0xffffffdf,%eax
    2c8e:	83 e8 41             	sub    $0x41,%eax
    2c91:	3c 19                	cmp    $0x19,%al
    2c93:	76 d2                	jbe    2c67 <submitr+0x337>
    2c95:	41 80 f8 20          	cmp    $0x20,%r8b
    2c99:	74 60                	je     2cfb <submitr+0x3cb>
    2c9b:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2c9f:	3c 5f                	cmp    $0x5f,%al
    2ca1:	76 0a                	jbe    2cad <submitr+0x37d>
    2ca3:	41 80 f8 09          	cmp    $0x9,%r8b
    2ca7:	0f 85 af 03 00 00    	jne    305c <submitr+0x72c>
    2cad:	45 0f b6 c0          	movzbl %r8b,%r8d
    2cb1:	48 8d 0d 98 10 00 00 	lea    0x1098(%rip),%rcx        # 3d50 <array.3436+0x6b0>
    2cb8:	ba 08 00 00 00       	mov    $0x8,%edx
    2cbd:	be 01 00 00 00       	mov    $0x1,%esi
    2cc2:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2cc7:	b8 00 00 00 00       	mov    $0x0,%eax
    2ccc:	e8 af ec ff ff       	call   1980 <__sprintf_chk@plt>
    2cd1:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2cd8:	00 
    2cd9:	88 45 00             	mov    %al,0x0(%rbp)
    2cdc:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2ce3:	00 
    2ce4:	88 45 01             	mov    %al,0x1(%rbp)
    2ce7:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2cee:	00 
    2cef:	88 45 02             	mov    %al,0x2(%rbp)
    2cf2:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2cf6:	e9 74 ff ff ff       	jmp    2c6f <submitr+0x33f>
    2cfb:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2cff:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2d03:	e9 67 ff ff ff       	jmp    2c6f <submitr+0x33f>
    2d08:	49 01 c5             	add    %rax,%r13
    2d0b:	48 29 c5             	sub    %rax,%rbp
    2d0e:	74 26                	je     2d36 <submitr+0x406>
    2d10:	48 89 ea             	mov    %rbp,%rdx
    2d13:	4c 89 ee             	mov    %r13,%rsi
    2d16:	44 89 e7             	mov    %r12d,%edi
    2d19:	e8 22 eb ff ff       	call   1840 <write@plt>
    2d1e:	48 85 c0             	test   %rax,%rax
    2d21:	7f e5                	jg     2d08 <submitr+0x3d8>
    2d23:	e8 e8 ea ff ff       	call   1810 <__errno_location@plt>
    2d28:	83 38 04             	cmpl   $0x4,(%rax)
    2d2b:	0f 85 31 01 00 00    	jne    2e62 <submitr+0x532>
    2d31:	4c 89 f0             	mov    %r14,%rax
    2d34:	eb d2                	jmp    2d08 <submitr+0x3d8>
    2d36:	48 85 db             	test   %rbx,%rbx
    2d39:	0f 88 23 01 00 00    	js     2e62 <submitr+0x532>
    2d3f:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2d44:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2d4b:	00 
    2d4c:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2d51:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2d55:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2d5a:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2d61:	00 
    2d62:	ba 00 20 00 00       	mov    $0x2000,%edx
    2d67:	e8 08 fb ff ff       	call   2874 <rio_readlineb>
    2d6c:	48 85 c0             	test   %rax,%rax
    2d6f:	0f 8e 4c 01 00 00    	jle    2ec1 <submitr+0x591>
    2d75:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2d7a:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2d81:	00 
    2d82:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2d89:	00 
    2d8a:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2d91:	00 
    2d92:	48 8d 35 be 0f 00 00 	lea    0xfbe(%rip),%rsi        # 3d57 <array.3436+0x6b7>
    2d99:	b8 00 00 00 00       	mov    $0x0,%eax
    2d9e:	e8 4d eb ff ff       	call   18f0 <__isoc99_sscanf@plt>
    2da3:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2da8:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2daf:	0f 85 80 01 00 00    	jne    2f35 <submitr+0x605>
    2db5:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2dbc:	00 
    2dbd:	48 8d 2d a4 0f 00 00 	lea    0xfa4(%rip),%rbp        # 3d68 <array.3436+0x6c8>
    2dc4:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    2dc9:	b9 03 00 00 00       	mov    $0x3,%ecx
    2dce:	48 89 de             	mov    %rbx,%rsi
    2dd1:	48 89 ef             	mov    %rbp,%rdi
    2dd4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2dd6:	0f 97 c0             	seta   %al
    2dd9:	1c 00                	sbb    $0x0,%al
    2ddb:	84 c0                	test   %al,%al
    2ddd:	0f 84 89 01 00 00    	je     2f6c <submitr+0x63c>
    2de3:	ba 00 20 00 00       	mov    $0x2000,%edx
    2de8:	48 89 de             	mov    %rbx,%rsi
    2deb:	4c 89 ef             	mov    %r13,%rdi
    2dee:	e8 81 fa ff ff       	call   2874 <rio_readlineb>
    2df3:	48 85 c0             	test   %rax,%rax
    2df6:	7f d1                	jg     2dc9 <submitr+0x499>
    2df8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2dff:	3a 20 43 
    2e02:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e09:	20 75 6e 
    2e0c:	49 89 07             	mov    %rax,(%r15)
    2e0f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2e13:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e1a:	74 6f 20 
    2e1d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2e24:	68 65 61 
    2e27:	49 89 47 10          	mov    %rax,0x10(%r15)
    2e2b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2e2f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2e36:	66 72 6f 
    2e39:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2e40:	76 65 72 
    2e43:	49 89 47 20          	mov    %rax,0x20(%r15)
    2e47:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2e4b:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2e50:	44 89 e7             	mov    %r12d,%edi
    2e53:	e8 18 ea ff ff       	call   1870 <close@plt>
    2e58:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e5d:	e9 5e 01 00 00       	jmp    2fc0 <submitr+0x690>
    2e62:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e69:	3a 20 43 
    2e6c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e73:	20 75 6e 
    2e76:	49 89 07             	mov    %rax,(%r15)
    2e79:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2e7d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e84:	74 6f 20 
    2e87:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2e8e:	20 74 6f 
    2e91:	49 89 47 10          	mov    %rax,0x10(%r15)
    2e95:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2e99:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2ea0:	73 65 72 
    2ea3:	49 89 47 20          	mov    %rax,0x20(%r15)
    2ea7:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2eae:	00 
    2eaf:	44 89 e7             	mov    %r12d,%edi
    2eb2:	e8 b9 e9 ff ff       	call   1870 <close@plt>
    2eb7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ebc:	e9 ff 00 00 00       	jmp    2fc0 <submitr+0x690>
    2ec1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2ec8:	3a 20 43 
    2ecb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ed2:	20 75 6e 
    2ed5:	49 89 07             	mov    %rax,(%r15)
    2ed8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2edc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ee3:	74 6f 20 
    2ee6:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2eed:	66 69 72 
    2ef0:	49 89 47 10          	mov    %rax,0x10(%r15)
    2ef4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2ef8:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2eff:	61 64 65 
    2f02:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2f09:	6d 20 73 
    2f0c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2f10:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2f14:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2f1b:	65 
    2f1c:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2f23:	44 89 e7             	mov    %r12d,%edi
    2f26:	e8 45 e9 ff ff       	call   1870 <close@plt>
    2f2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f30:	e9 8b 00 00 00       	jmp    2fc0 <submitr+0x690>
    2f35:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2f3c:	00 
    2f3d:	48 8d 0d 5c 0d 00 00 	lea    0xd5c(%rip),%rcx        # 3ca0 <array.3436+0x600>
    2f44:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2f4b:	be 01 00 00 00       	mov    $0x1,%esi
    2f50:	4c 89 ff             	mov    %r15,%rdi
    2f53:	b8 00 00 00 00       	mov    $0x0,%eax
    2f58:	e8 23 ea ff ff       	call   1980 <__sprintf_chk@plt>
    2f5d:	44 89 e7             	mov    %r12d,%edi
    2f60:	e8 0b e9 ff ff       	call   1870 <close@plt>
    2f65:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f6a:	eb 54                	jmp    2fc0 <submitr+0x690>
    2f6c:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2f73:	00 
    2f74:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2f79:	ba 00 20 00 00       	mov    $0x2000,%edx
    2f7e:	e8 f1 f8 ff ff       	call   2874 <rio_readlineb>
    2f83:	48 85 c0             	test   %rax,%rax
    2f86:	7e 61                	jle    2fe9 <submitr+0x6b9>
    2f88:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2f8f:	00 
    2f90:	4c 89 ff             	mov    %r15,%rdi
    2f93:	e8 88 e8 ff ff       	call   1820 <strcpy@plt>
    2f98:	44 89 e7             	mov    %r12d,%edi
    2f9b:	e8 d0 e8 ff ff       	call   1870 <close@plt>
    2fa0:	b9 03 00 00 00       	mov    $0x3,%ecx
    2fa5:	48 8d 3d bf 0d 00 00 	lea    0xdbf(%rip),%rdi        # 3d6b <array.3436+0x6cb>
    2fac:	4c 89 fe             	mov    %r15,%rsi
    2faf:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2fb1:	0f 97 c0             	seta   %al
    2fb4:	1c 00                	sbb    $0x0,%al
    2fb6:	84 c0                	test   %al,%al
    2fb8:	0f 95 c0             	setne  %al
    2fbb:	0f b6 c0             	movzbl %al,%eax
    2fbe:	f7 d8                	neg    %eax
    2fc0:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2fc7:	00 
    2fc8:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    2fcf:	00 00 
    2fd1:	0f 85 95 01 00 00    	jne    316c <submitr+0x83c>
    2fd7:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    2fde:	5b                   	pop    %rbx
    2fdf:	5d                   	pop    %rbp
    2fe0:	41 5c                	pop    %r12
    2fe2:	41 5d                	pop    %r13
    2fe4:	41 5e                	pop    %r14
    2fe6:	41 5f                	pop    %r15
    2fe8:	c3                   	ret
    2fe9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2ff0:	3a 20 43 
    2ff3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ffa:	20 75 6e 
    2ffd:	49 89 07             	mov    %rax,(%r15)
    3000:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3004:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    300b:	74 6f 20 
    300e:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    3015:	73 74 61 
    3018:	49 89 47 10          	mov    %rax,0x10(%r15)
    301c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3020:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    3027:	65 73 73 
    302a:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    3031:	72 6f 6d 
    3034:	49 89 47 20          	mov    %rax,0x20(%r15)
    3038:	49 89 57 28          	mov    %rdx,0x28(%r15)
    303c:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    3043:	65 72 00 
    3046:	49 89 47 30          	mov    %rax,0x30(%r15)
    304a:	44 89 e7             	mov    %r12d,%edi
    304d:	e8 1e e8 ff ff       	call   1870 <close@plt>
    3052:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3057:	e9 64 ff ff ff       	jmp    2fc0 <submitr+0x690>
    305c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3063:	3a 20 52 
    3066:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    306d:	20 73 74 
    3070:	49 89 07             	mov    %rax,(%r15)
    3073:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3077:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    307e:	63 6f 6e 
    3081:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    3088:	20 61 6e 
    308b:	49 89 47 10          	mov    %rax,0x10(%r15)
    308f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3093:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    309a:	67 61 6c 
    309d:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    30a4:	6e 70 72 
    30a7:	49 89 47 20          	mov    %rax,0x20(%r15)
    30ab:	49 89 57 28          	mov    %rdx,0x28(%r15)
    30af:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    30b6:	6c 65 20 
    30b9:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    30c0:	63 74 65 
    30c3:	49 89 47 30          	mov    %rax,0x30(%r15)
    30c7:	49 89 57 38          	mov    %rdx,0x38(%r15)
    30cb:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    30d2:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    30d7:	44 89 e7             	mov    %r12d,%edi
    30da:	e8 91 e7 ff ff       	call   1870 <close@plt>
    30df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    30e4:	e9 d7 fe ff ff       	jmp    2fc0 <submitr+0x690>
    30e9:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    30f0:	00 
    30f1:	48 83 ec 08          	sub    $0x8,%rsp
    30f5:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    30fc:	00 
    30fd:	50                   	push   %rax
    30fe:	ff 74 24 28          	push   0x28(%rsp)
    3102:	ff 74 24 38          	push   0x38(%rsp)
    3106:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    310b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    3110:	48 8d 0d b9 0b 00 00 	lea    0xbb9(%rip),%rcx        # 3cd0 <array.3436+0x630>
    3117:	ba 00 20 00 00       	mov    $0x2000,%edx
    311c:	be 01 00 00 00       	mov    $0x1,%esi
    3121:	48 89 df             	mov    %rbx,%rdi
    3124:	b8 00 00 00 00       	mov    $0x0,%eax
    3129:	e8 52 e8 ff ff       	call   1980 <__sprintf_chk@plt>
    312e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    3135:	b8 00 00 00 00       	mov    $0x0,%eax
    313a:	48 89 df             	mov    %rbx,%rdi
    313d:	f2 ae                	repnz scas %es:(%rdi),%al
    313f:	48 f7 d1             	not    %rcx
    3142:	48 89 cb             	mov    %rcx,%rbx
    3145:	48 83 eb 01          	sub    $0x1,%rbx
    3149:	48 83 c4 20          	add    $0x20,%rsp
    314d:	48 89 dd             	mov    %rbx,%rbp
    3150:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    3157:	00 
    3158:	41 be 00 00 00 00    	mov    $0x0,%r14d
    315e:	48 85 db             	test   %rbx,%rbx
    3161:	0f 85 a9 fb ff ff    	jne    2d10 <submitr+0x3e0>
    3167:	e9 d3 fb ff ff       	jmp    2d3f <submitr+0x40f>
    316c:	e8 df e6 ff ff       	call   1850 <__stack_chk_fail@plt>

0000000000003171 <init_timeout>:
    3171:	85 ff                	test   %edi,%edi
    3173:	74 25                	je     319a <init_timeout+0x29>
    3175:	53                   	push   %rbx
    3176:	89 fb                	mov    %edi,%ebx
    3178:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 2844 <sigalrm_handler>
    317f:	bf 0e 00 00 00       	mov    $0xe,%edi
    3184:	e8 17 e7 ff ff       	call   18a0 <signal@plt>
    3189:	85 db                	test   %ebx,%ebx
    318b:	bf 00 00 00 00       	mov    $0x0,%edi
    3190:	0f 49 fb             	cmovns %ebx,%edi
    3193:	e8 c8 e6 ff ff       	call   1860 <alarm@plt>
    3198:	5b                   	pop    %rbx
    3199:	c3                   	ret
    319a:	f3 c3                	repz ret

000000000000319c <init_driver>:
    319c:	41 54                	push   %r12
    319e:	55                   	push   %rbp
    319f:	53                   	push   %rbx
    31a0:	48 83 ec 20          	sub    $0x20,%rsp
    31a4:	49 89 fc             	mov    %rdi,%r12
    31a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    31ae:	00 00 
    31b0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    31b5:	31 c0                	xor    %eax,%eax
    31b7:	be 01 00 00 00       	mov    $0x1,%esi
    31bc:	bf 0d 00 00 00       	mov    $0xd,%edi
    31c1:	e8 da e6 ff ff       	call   18a0 <signal@plt>
    31c6:	be 01 00 00 00       	mov    $0x1,%esi
    31cb:	bf 1d 00 00 00       	mov    $0x1d,%edi
    31d0:	e8 cb e6 ff ff       	call   18a0 <signal@plt>
    31d5:	be 01 00 00 00       	mov    $0x1,%esi
    31da:	bf 1d 00 00 00       	mov    $0x1d,%edi
    31df:	e8 bc e6 ff ff       	call   18a0 <signal@plt>
    31e4:	ba 00 00 00 00       	mov    $0x0,%edx
    31e9:	be 01 00 00 00       	mov    $0x1,%esi
    31ee:	bf 02 00 00 00       	mov    $0x2,%edi
    31f3:	e8 98 e7 ff ff       	call   1990 <socket@plt>
    31f8:	85 c0                	test   %eax,%eax
    31fa:	0f 88 a3 00 00 00    	js     32a3 <init_driver+0x107>
    3200:	89 c3                	mov    %eax,%ebx
    3202:	48 8d 3d 65 0b 00 00 	lea    0xb65(%rip),%rdi        # 3d6e <array.3436+0x6ce>
    3209:	e8 a2 e6 ff ff       	call   18b0 <gethostbyname@plt>
    320e:	48 85 c0             	test   %rax,%rax
    3211:	0f 84 df 00 00 00    	je     32f6 <init_driver+0x15a>
    3217:	48 89 e5             	mov    %rsp,%rbp
    321a:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    3221:	00 00 
    3223:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    322a:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    3230:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    3236:	48 63 50 14          	movslq 0x14(%rax),%rdx
    323a:	48 8b 40 18          	mov    0x18(%rax),%rax
    323e:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    3242:	b9 0c 00 00 00       	mov    $0xc,%ecx
    3247:	48 8b 30             	mov    (%rax),%rsi
    324a:	e8 71 e6 ff ff       	call   18c0 <__memmove_chk@plt>
    324f:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
    3256:	ba 10 00 00 00       	mov    $0x10,%edx
    325b:	48 89 ee             	mov    %rbp,%rsi
    325e:	89 df                	mov    %ebx,%edi
    3260:	e8 db e6 ff ff       	call   1940 <connect@plt>
    3265:	85 c0                	test   %eax,%eax
    3267:	0f 88 fb 00 00 00    	js     3368 <init_driver+0x1cc>
    326d:	89 df                	mov    %ebx,%edi
    326f:	e8 fc e5 ff ff       	call   1870 <close@plt>
    3274:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    327b:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    3281:	b8 00 00 00 00       	mov    $0x0,%eax
    3286:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    328b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3292:	00 00 
    3294:	0f 85 06 01 00 00    	jne    33a0 <init_driver+0x204>
    329a:	48 83 c4 20          	add    $0x20,%rsp
    329e:	5b                   	pop    %rbx
    329f:	5d                   	pop    %rbp
    32a0:	41 5c                	pop    %r12
    32a2:	c3                   	ret
    32a3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    32aa:	3a 20 43 
    32ad:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    32b4:	20 75 6e 
    32b7:	49 89 04 24          	mov    %rax,(%r12)
    32bb:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    32c0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    32c7:	74 6f 20 
    32ca:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    32d1:	65 20 73 
    32d4:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    32d9:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    32de:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    32e5:	6b 65 
    32e7:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    32ee:	00 
    32ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    32f4:	eb 90                	jmp    3286 <init_driver+0xea>
    32f6:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    32fd:	3a 20 44 
    3300:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3307:	20 75 6e 
    330a:	49 89 04 24          	mov    %rax,(%r12)
    330e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    3313:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    331a:	74 6f 20 
    331d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3324:	76 65 20 
    3327:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    332c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    3331:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    3338:	72 20 61 
    333b:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    3340:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    3347:	72 65 
    3349:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    3350:	73 
    3351:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    3357:	89 df                	mov    %ebx,%edi
    3359:	e8 12 e5 ff ff       	call   1870 <close@plt>
    335e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3363:	e9 1e ff ff ff       	jmp    3286 <init_driver+0xea>
    3368:	4c 8d 05 ff 09 00 00 	lea    0x9ff(%rip),%r8        # 3d6e <array.3436+0x6ce>
    336f:	48 8d 0d b2 09 00 00 	lea    0x9b2(%rip),%rcx        # 3d28 <array.3436+0x688>
    3376:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    337d:	be 01 00 00 00       	mov    $0x1,%esi
    3382:	4c 89 e7             	mov    %r12,%rdi
    3385:	b8 00 00 00 00       	mov    $0x0,%eax
    338a:	e8 f1 e5 ff ff       	call   1980 <__sprintf_chk@plt>
    338f:	89 df                	mov    %ebx,%edi
    3391:	e8 da e4 ff ff       	call   1870 <close@plt>
    3396:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    339b:	e9 e6 fe ff ff       	jmp    3286 <init_driver+0xea>
    33a0:	e8 ab e4 ff ff       	call   1850 <__stack_chk_fail@plt>

00000000000033a5 <driver_post>:
    33a5:	53                   	push   %rbx
    33a6:	4c 89 c3             	mov    %r8,%rbx
    33a9:	85 c9                	test   %ecx,%ecx
    33ab:	75 17                	jne    33c4 <driver_post+0x1f>
    33ad:	48 85 ff             	test   %rdi,%rdi
    33b0:	74 05                	je     33b7 <driver_post+0x12>
    33b2:	80 3f 00             	cmpb   $0x0,(%rdi)
    33b5:	75 33                	jne    33ea <driver_post+0x45>
    33b7:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    33bc:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    33c0:	89 c8                	mov    %ecx,%eax
    33c2:	5b                   	pop    %rbx
    33c3:	c3                   	ret
    33c4:	48 8d 35 bc 09 00 00 	lea    0x9bc(%rip),%rsi        # 3d87 <array.3436+0x6e7>
    33cb:	bf 01 00 00 00       	mov    $0x1,%edi
    33d0:	b8 00 00 00 00       	mov    $0x0,%eax
    33d5:	e8 26 e5 ff ff       	call   1900 <__printf_chk@plt>
    33da:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    33df:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    33e3:	b8 00 00 00 00       	mov    $0x0,%eax
    33e8:	eb d8                	jmp    33c2 <driver_post+0x1d>
    33ea:	41 50                	push   %r8
    33ec:	52                   	push   %rdx
    33ed:	4c 8d 0d aa 09 00 00 	lea    0x9aa(%rip),%r9        # 3d9e <array.3436+0x6fe>
    33f4:	49 89 f0             	mov    %rsi,%r8
    33f7:	48 89 f9             	mov    %rdi,%rcx
    33fa:	48 8d 15 a1 09 00 00 	lea    0x9a1(%rip),%rdx        # 3da2 <array.3436+0x702>
    3401:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
    3406:	48 8d 3d 61 09 00 00 	lea    0x961(%rip),%rdi        # 3d6e <array.3436+0x6ce>
    340d:	e8 1e f5 ff ff       	call   2930 <submitr>
    3412:	48 83 c4 10          	add    $0x10,%rsp
    3416:	eb aa                	jmp    33c2 <driver_post+0x1d>
    3418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    341f:	00 

0000000000003420 <__libc_csu_init>:
    3420:	41 57                	push   %r15
    3422:	41 56                	push   %r14
    3424:	49 89 d7             	mov    %rdx,%r15
    3427:	41 55                	push   %r13
    3429:	41 54                	push   %r12
    342b:	4c 8d 25 ae 18 20 00 	lea    0x2018ae(%rip),%r12        # 204ce0 <__frame_dummy_init_array_entry>
    3432:	55                   	push   %rbp
    3433:	48 8d 2d ae 18 20 00 	lea    0x2018ae(%rip),%rbp        # 204ce8 <__do_global_dtors_aux_fini_array_entry>
    343a:	53                   	push   %rbx
    343b:	41 89 fd             	mov    %edi,%r13d
    343e:	49 89 f6             	mov    %rsi,%r14
    3441:	4c 29 e5             	sub    %r12,%rbp
    3444:	48 83 ec 08          	sub    $0x8,%rsp
    3448:	48 c1 fd 03          	sar    $0x3,%rbp
    344c:	e8 67 e3 ff ff       	call   17b8 <_init>
    3451:	48 85 ed             	test   %rbp,%rbp
    3454:	74 20                	je     3476 <__libc_csu_init+0x56>
    3456:	31 db                	xor    %ebx,%ebx
    3458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    345f:	00 
    3460:	4c 89 fa             	mov    %r15,%rdx
    3463:	4c 89 f6             	mov    %r14,%rsi
    3466:	44 89 ef             	mov    %r13d,%edi
    3469:	41 ff 14 dc          	call   *(%r12,%rbx,8)
    346d:	48 83 c3 01          	add    $0x1,%rbx
    3471:	48 39 dd             	cmp    %rbx,%rbp
    3474:	75 ea                	jne    3460 <__libc_csu_init+0x40>
    3476:	48 83 c4 08          	add    $0x8,%rsp
    347a:	5b                   	pop    %rbx
    347b:	5d                   	pop    %rbp
    347c:	41 5c                	pop    %r12
    347e:	41 5d                	pop    %r13
    3480:	41 5e                	pop    %r14
    3482:	41 5f                	pop    %r15
    3484:	c3                   	ret
    3485:	90                   	nop
    3486:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    348d:	00 00 00 

0000000000003490 <__libc_csu_fini>:
    3490:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000003494 <_fini>:
    3494:	48 83 ec 08          	sub    $0x8,%rsp
    3498:	48 83 c4 08          	add    $0x8,%rsp
    349c:	c3                   	ret

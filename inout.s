.globl _start

.intel_syntax noprefix

.section .text
_start:

	mov rax,0
	mov rdi,0
	lea rsi,[rip+ buffer]
	mov rdx,64

	syscall

		
	mov rdx,rax

	mov rax,1
	mov rdi,1
	lea rsi,[rip+buffer]
	
	syscall

	mov rax,60
	mov rdi,69

	syscall
	



.section .bss

buffer:
	.skip 64




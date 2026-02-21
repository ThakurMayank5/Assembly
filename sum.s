.globl _start

.intel_syntax noprefix

.section .text

_start:

	mov rdi,5
	mov rsi,4

	call sum

	mov rsi,rax	

	add rax,'0'

	mov [rip+result],rax

	mov rax,1
	mov rdi,1
	lea rsi,[rip+result]
	mov rdx,1

	syscall

	mov rax,60
	mov rdi,0

	syscall

sum:
	mov rax,rdi
	add rax,rsi
	ret

.section .bss
result:
	.skip 1

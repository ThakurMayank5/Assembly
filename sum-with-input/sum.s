.global _start

.intel_syntax noprefix

.section .text
	
_start:

	call input

	mov al,[rip+buffer]

	sub al,'0'
	
	call input

	mov bl,[rip+buffer]
	
	sub bl,'0'

	add al,bl

	add al,'0'

	mov [rip+buffer],al

	mov rax,1
	mov rdi,1

	lea rsi,[rip+buffer] 	
	mov rdx,1

	syscall

	mov rax,60
	mov rdi,0

	syscall

input:
	mov rax,0
	mov rdi,0
	lea rsi,[rip+buffer]
	mov rdx,1

	syscall	

	ret

.section .bss
buffer:
	.skip 1





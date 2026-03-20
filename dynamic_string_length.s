.global _start

.intel_syntax noprefix

.section .text
_start:

mov rax,1

mov rdi,1

lea rsi,[rip+message]

mov rdx,OFFSET message_length

syscall

mov rax,60

xor rdi,rdi
syscall



.section .rodata

message:
    .ascii "This is a message\n"

.equ message_length, . - message

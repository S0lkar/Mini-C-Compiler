.section .data
.comm      ax, 4, 4
.comm      bx, 4, 4
.comm      cx, 4, 4

.section .text
    .globl main

funcion:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
MOVL $1, %eax
leave
ret

main:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $16, %esp
_A:
J _A
MOVL $1, %eax
MOVL %eax, -8(%ebp)
MOVL $23, %eax
MOVL %eax, -12(%ebp)
PUSHL -8(%ebp)
MOVL $1, %ebx
POPL %eax
ADDL %eax, %ebx
MOVL %eax, -8(%ebp)
Et0:
MOVL $0, %eax
MOVL %eax, -8(%ebp)
MOVL -8(%ebp), %eax
CMP %eax, $0
JE Et1
J Et0
Et1:
leave
ret


.section .data

.section .text
    .globl main

main:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $852, %esp
LEAL -20(%ebp), %eax
MOVL %eax, -16(%ebp)
LEAL -424(%ebp), %eax
MOVL %eax, -420(%ebp)
PUSHL $0
MOVL $50, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -16(%ebp), %eax
MOVL (%eax,%ebx), %eax
MOVL %eax, -4(%ebp)
PUSHL $0
MOVL $6, %eax
POPL %ebx
ADDL %ebx, %eax
PUSHL %eax
MOVL $5, %eax
MULL $10, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -420(%ebp), %eax
MOVL (%eax,%ebx), %eax
MOVL %eax, -4(%ebp)
MOVL -8(%ebp), %eax
LEAL %eax, %eax
MOVL %eax, -4(%ebp)
MOVL -12(%ebp), %eax
MOVL (%eax), %eax
MOVL %eax, -4(%ebp)
MOVL $1, %eax
leave
ret

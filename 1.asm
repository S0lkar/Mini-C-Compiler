.section .data

.section .text
    .globl main

main:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $12, %esp
MOVL $1, %eax
MOVL %eax, -8(%ebp)
PUSHL $1
MOVL $2, %ebx
POPL %eax
ADDL %eax, %ebx
MOVL %eax, -4(%ebp)
PUSHL -4(%ebp)
MOVL $5, %ebx
POPL %eax
OR %eax, %ebx
MOVL %eax, -4(%ebp)
PUSHL -4(%ebp)
MOVL $0, %ebx
POPL %eax
AND %eax, %ebx
MOVL %eax, -4(%ebp)
PUSHL -4(%ebp)
MOVL -8(%ebp), %ebx
POPL %eax
SUBL %eax, %ebx
MOVL %eax, -4(%ebp)
PUSHL -8(%ebp)
MOVL -4(%ebp), %ebx
POPL %eax
IMULL %eax, %ebx
MOVL %eax, -8(%ebp)
PUSHL -8(%ebp)
MOVL $5, %ebx
POPL %eax
IDIVL %eax, %ebx
MOVL %eax, -8(%ebp)
PUSHL $2
MOVL $5, %ebx
POPL %eax
CMP %ebx, %eax
LAHF
AND %eax, $0x00000100
shrw $8,%ax
MOVL %eax, -8(%ebp)
PUSHL $5
MOVL $5, %ebx
POPL %eax
CMP %ebx, %eax
LAHF
AND %eax, $0x00004000
shrw $14,%ax
MOVL %eax, -8(%ebp)
PUSHL $5
MOVL $2, %ebx
POPL %eax
CMP %eax, %ebx
LAHF
AND %eax, $0x00000100
shrw $8,%ax
MOVL %eax, -12(%ebp)
MOVL -12(%ebp), %eax
MOVL %eax, -8(%ebp)
MOVL %eax, -4(%ebp)
MOVL $1, %eax
MOVL %eax, -12(%ebp)
MOVL %eax, -8(%ebp)
MOVL %eax, -4(%ebp)
PUSHL $12
MOVL $34, %ebx
POPL %eax
ADDL %eax, %ebx
PUSHL -8(%ebp)
MOVL -12(%ebp), %ebx
POPL %eax
CMP %eax, %ebx
LAHF
XOR %ax, $0xFFFF
AND %eax, $0x00000100
shrw $8,%ax
NOT %eax
MOVL %eax, -4(%ebp)
MOVL $1, %eax
leave
ret

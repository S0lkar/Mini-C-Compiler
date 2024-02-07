.section .data
.comm      a, 48, 4
.$s0  "%c"

.$s1  "%s"


.section .text
    .globl main

funcion:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
MOVL $1, %eax
leave
ret

otra_funcion:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
MOVL $10, %eax
leave
ret

main:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $32, %esp
PUSHL $0
MOVL $0x0000067, %ebx
POPL %eax
SUBL %eax, %ebx
PUSHL %eax
call abs
ADDL $4, %esp
MOVZX %al, %eax
MOVL %eax, -4(%ebp)
PUSHL -4(%ebp)
PUSH $s0
call printf
ADDL $8, %esp
LEAL -12(%ebp), %eax
MOVL %eax, -8(%ebp)
PUSHL $104
PUSHL $0
MOVL $0, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -8(%ebp), %eax
MOVL (%eax,%ebx), %eax
ADDL -8(%ebp), %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
PUSHL $111
PUSHL $0
MOVL $1, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -8(%ebp), %eax
MOVL (%eax,%ebx), %eax
ADDL -8(%ebp), %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
PUSHL $108
PUSHL $0
MOVL $2, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -8(%ebp), %eax
MOVL (%eax,%ebx), %eax
ADDL -8(%ebp), %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
PUSHL $97
PUSHL $0
MOVL $3, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -8(%ebp), %eax
MOVL (%eax,%ebx), %eax
ADDL -8(%ebp), %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
PUSHL $10
PUSHL $0
MOVL $4, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL -8(%ebp), %eax
MOVL (%eax,%ebx), %eax
ADDL -8(%ebp), %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
PUSHL -8(%ebp)
PUSH $s1
call printf
ADDL $8, %esp
PUSHL -4(%ebp)
MOVL $1, %eax
MOVZX %al, %eax
MOVL %eax, %ebx
POPL %eax
ADDL %eax, %ebx
MOVL %eax, %al
PUSHL %eax
PUSHL $0
MOVL $1, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL a, %eax
MOVL (%eax,%ebx), %eax
ADDL a, %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
MOVL %eax, -32(%ebp)
PUSHL -32(%ebp)
MOVL -32(%ebp), %ebx
POPL %eax
ADDL %eax, %ebx
MOVL %eax, -32(%ebp)
PUSHL -32(%ebp)
PUSHL $0
MOVL $1, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL a, %eax
MOVL (%eax,%ebx), %ebx
POPL %eax
IMULL %eax, %ebx
MOVL %eax, -32(%ebp)
leave
ret


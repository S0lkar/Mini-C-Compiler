.section .data
.comm      z, 4, 4
.comm      x, 4, 4
.comm      y, 4, 4

.section .text
    .globl main

fn:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
MOVL $1, %eax
leave
ret

fn2:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
leave
ret

fn3:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
MOVL $10, %eax
leave
ret

fn4:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
MOVL 8(%ebp), %eax
leave
ret

fn5:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $4, %esp
PUSHL 12(%ebp)
PUSHL $0
MOVL $0, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL 16(%ebp), %eax
MOVL (%eax,%ebx), %ebx
POPL %eax
IMULL %eax, %ebx
MOVL %eax, -4(%ebp)
PUSHL $1
PUSHL $0
MOVL $3, %eax
POPL %ebx
ADDL %ebx, %eax
MOVL %eax, %ebx
MOVL 16(%ebp), %eax
MOVL (%eax,%ebx), %eax
ADDL 16(%ebp), %eax
POPL %ebx
MOVL %ebx, (%eax)
MOVL %ebx, %eax
MOVL -4(%ebp), %eax
leave
ret

fn6:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $0, %esp
leave
ret

main:
PUSHL %ebp
MOVL %esp, %ebp
SUBL $28, %esp
MOVL $1, %eax
MOVL %eax, z
PUSHL $1
MOVL $1, %ebx
POPL %eax
CMP %ebx, %eax
LAHF
AND %eax, $0x00004000
shrw $14,%ax
CMP %eax, $0
JE Et2
MOVL $1, %eax
MOVL %eax, -20(%ebp)
J Et3
Et2:
Et3:
PUSHL $1
MOVL $1, %ebx
POPL %eax
CMP %ebx, %eax
LAHF
AND %eax, $0x00004000
shrw $14,%ax
CMP %eax, $0
JE Et6
MOVL $1, %eax
MOVL %eax, -24(%ebp)
J Et7
Et6:
Et7:
Et8:
PUSHL z
MOVL $1, %ebx
POPL %eax
CMP %ebx, %eax
LAHF
AND %eax, $0x00004000
shrw $14,%ax
CMP %eax, $0
JE Et11
MOVL $1, %eax
MOVL %eax, -28(%ebp)
PUSHL z
MOVL $1, %ebx
POPL %eax
SUBL %eax, %ebx
MOVL %eax, z
J Et8
Et11:
MOVL z, %eax
leave
ret

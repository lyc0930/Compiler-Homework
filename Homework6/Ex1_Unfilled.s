    .section .rodata
.LC0:
    .string "%x %s\n"
    .text
.globl main
    .type   main, @function
main:
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    movl    %esp, %ebp
    subl    $40, %esp
    andl    $-16, %esp
    movl    $0, %eax
    subl    %eax, %esp
    movb    $50, -24(%ebp)
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    movl    %eax, -28(%ebp)
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    pushl   $.LC0
    call    printf
    addl    $16, %esp
    `\underline{~~~~~~~~~~~~~~~~~~~~~~}`
    leave
    ret
// \songti 第一题汇编程序

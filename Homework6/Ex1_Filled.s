.section .rodata
.LC0:
    .string "%x %s\n"
    .text
.globl main
    .type   main, @function
main:
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{pushl~~~\%ebp}}`
    movl    %esp, %ebp
    subl    $40, %esp
    andl    $-16, %esp
    movl    $0, %eax
    subl    %eax, %esp
    movb    $50, -24(%ebp)
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movb~~~~\$48, -23(\%ebp)}}`
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movb~~~~\$49, -22(\%ebp)}}`
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movb~~~~\$54, -21(\%ebp)}}`
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movb~~~~\$0, -20(\%ebp)}}`
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{leal~~~~-24(\%ebp), \%eax}}`
    movl    %eax, -28(%ebp)
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movl~~~~-24(\%ebp), \%eax}}`
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movl~~~~-28(\%ebp), \%edx}}`
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{movl~~~~\%edx, \%esp}}`
    pushl   $.LC0
    call    printf
    addl    $16, %esp
    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{popl~~~~\%esp}}`
    leave
    ret
// \songti 补全后的第一题汇编程序

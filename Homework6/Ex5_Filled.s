.LC0:
    .long   0
    .long   1
    .long   2
    .long   3
    .long   4
    .long   5
.LC1:
    .string "%d\n"
    .text
.globl main
    .type   main, @function
main:
    pushl   %ebp
    movl    %esp, %ebp
    pushl   %edi
    pushl   %esi
    subl    $48, %esp
    andl    $-16, %esp
    movl    $0, %eax
    subl    %eax, %esp
    leal    -40(%ebp), %edi
    movl    $.LC0, %esi
    cld
    movl    $6, %eax
    movl    %eax, %ecx
    rep
    movsl
    movl    $6, -44(%ebp)
    movl    $7, -48(%ebp)
    leal    -40(%ebp), %eax
    addl    `\underline{\ttfamily \color{red!20!green!60!blue}{\$24, \%eax}}`
    movl    %eax, -52(%ebp)
    subl    $8, %esp
    movl    -52(%ebp), %eax
    subl    $`\underline{\ttfamily \color{red!20!green!60!blue}{4}}`, %eax
    pushl   `\underline{\ttfamily \color{red!20!green!60!blue}{(\%eax)}}`
    pushl   $.LC1
    call    printf
    addl    $`\underline{\ttfamily \color{red!20!green!60!blue}{8}}` , %esp
    movl    $0, %eax
    leal    `\underline{\ttfamily \color{red!20!green!60!blue}{-12(\%ebp)}}`, %esp
    popl    %esi
    popl    %edi
    leave
    ret
// \upshape \songti 补全后的第五题汇编代码片段

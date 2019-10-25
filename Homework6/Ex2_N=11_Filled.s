    .file "test1.c"
    .text
.globl f
    .type   f,@function
f:
    pushl   %ebp
    movl    %esp, %ebp
    pushl   %edi
    pushl   %esi
    movl    $100, 8(%ebp)
    movl    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{\$24}}`, 12(%ebp)
    movb    $65, `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{17(\%ebp)}}`
    subl    $8, %esp
    movl    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{\$6}}`, %eax
    subl    $24, %esp
    movl    %esp, %edi
    movl    %eax, %esi
    cld
    movl    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{\$34}}`, %eax
    movl    %eax, %ecx
    rep
    movsl
    call    f
    addl    $32, %esp
    leal    -8(%ebp), %esp
    popl    %esi
    popl    %edi
    leave
    ret
// \songti \upshape 当N=11时，补全后的汇编代码片段
            

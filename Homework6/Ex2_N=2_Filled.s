    .file "test1.c"
    .text
.globl f
    .type   f,@function
f:
    pushl   %ebp
    movl    %esp, %ebp
    movl    $100, 8(%ebp)
    movl    $16, 12(%ebp)
    movb    $65, `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{17(\%ebp)}}`
    movl    `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{20(\%ebp)}}`, %eax
    pushl   `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{8(\%ebp)}}`
    pushl   `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{12(\%ebp)}}`
    pushl   `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{16(\%ebp)}}`
    pushl   `\underline{\mdseries \ttfamily \color{red!20!green!60!blue}{17(\%ebp)}}`
    call    f
    addl    $16, %esp
    leave
    ret
// \songti \upshape 当N=2时，补全后的汇编代码片段。
            

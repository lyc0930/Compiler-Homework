main:
    pushl   %ebp
    `\underline{\ttfamily \color{red!20!green!60!blue}{movl~~~~\%esp, \%ebp}}`
    subl    $24, %esp
    andl    $-16, %esp
    movl    $0, %eax
    subl    %eax, %esp
    movl    $0, `\underline{\ttfamily \color{red!20!green!60!blue}{\%ebp}}`
    movl    $0, `\underline{\ttfamily \color{red!20!green!60!blue}{-4(\%ebp)}}`
    movl    $1, `\underline{\ttfamily \color{red!20!green!60!blue}{-8(\%ebp)}}`
    movl    $2, -12(%ebp)
    movl    $3, `\underline{\ttfamily \color{red!20!green!60!blue}{-16(\%ebp)}}`
    movl    $0, %eax
    leave
    ret
// \songti \upshape 补全后第四题汇编代码片段

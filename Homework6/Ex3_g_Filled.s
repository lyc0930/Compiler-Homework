.globl g
    .type   g,@function
g:
    pushl   %ebp
    movl    %esp, %ebp
    movl  `\underline{\textcircled{4}\ttfamily \color{red!20!green!60!blue}{8(\%ebp)}}`, %eax
    movl  `\underline{\textcircled{5}\ttfamily \color{red!20!green!60!blue}{(\%eax)}}`, %eax
  `\underline{\textcircled{6}\ttfamily \color{red!20!green!60!blue}{movl~~~~-1(\%eax), (\%eax)}}`
    movl  `\underline{\textcircled{7}\ttfamily \color{red!20!green!60!blue}{8(\%ebp)}}`, %eax
  `\underline{\textcircled{8}\ttfamily \color{red!20!green!60!blue}{movl~~~~(\%eax), \%eax}}`
    leave
    ret
// \songti \upshape 补全后第三题函数\texttt{g}的汇编代码片段

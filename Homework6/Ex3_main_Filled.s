    .file "p.c"
    .text
.globl main
    .type   main,@function
main:
    pushl   %ebp
    movl    %esp, %ebp
    subl    $72, %esp
    andl    $-16, %esp
    movl    $0, %eax
    subl    %eax, %esp
    leal    -56(%ebp), %eax
    movl    %eax, -64(%ebp)
    movl    $0, -60(%ebp)
.L2:
  `\underline{\textcircled{1}\ttfamily \color{red!20!green!60!blue}{cmpl~~~~\$9, -60(\%ebp)}}`
    jle     .L5
    jmp     .L3
.L5:
    movl    -64(%ebp), %edx
    movl    -60(%ebp), %eax
    movl    %eax, (%edx)
    subl    $12, %esp
    leal    -64(%ebp), %eax
    pushl   %eax
    call    g
  `\underline{\textcircled{2}\ttfamily \color{red!20!green!60!blue}{movl~~~~\%eax, (\%ebp)}}`
    leal    -60(%ebp), %eax
    incl    (%eax)
  `\underline{\textcircled{3}\ttfamily \color{red!20!green!60!blue}{jmpl~~~~.L2}}`
.L3:
    movl    $0, %eax
    leave
    ret
// \songti \upshape 补全后第三题函数\texttt{main}的汇编代码片段

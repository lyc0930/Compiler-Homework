.globl g
    .type   g,@function
g:
    pushl   %ebp
    movl    %esp, %ebp
    movl    `\underline{~\textcircled{4}~}`, %eax
    movl    `\underline{~\textcircled{5}~}`, %eax
    `\underline{~~~~~~~~~\textcircled{6}~~~~~~~}`
    movl    `\underline{~\textcircled{7}~}`, %eax
    `\underline{~~~~~~~~~\textcircled{8}~~~~~~~}`
    leave
    ret
// \songti \upshape 第三题函数\texttt{g}的汇编代码片段

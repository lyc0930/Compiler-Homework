main:
    pushl   %ebp
    `\underline{~~~~~~~~~~~~~~~~~~}`
    subl    $24, %esp
    andl    $-16, %esp
    movl    $0, %eax
    subl    %eax, %esp
    movl    $0, `\underline{~~~~~~~~~}`
    movl    $0, `\underline{~~~~~~~~~}`
    movl    $1, `\underline{~~~~~~~~~}`
    movl    $2, -12(%ebp)
    movl    $3, `\underline{~~~~~~~~~}`
    movl    $0, %eax
    leave
    ret
// \songti \upshape 第四题汇编代码片段

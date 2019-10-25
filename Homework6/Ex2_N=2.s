    .file "test1.c"
    .text
.globl f
    .type   f,@function
f:
    pushl   %ebp
    movl    %esp, %ebp
    movl    $100, 8(%ebp)
    movl    $16, 12(%ebp)
    movb    $65, `\underline{~~~~~~~~}`
    movl    `\underline{~~~~~~~}`, %eax
    pushl   `\underline{~~~~~~~~~~~~~}`
    pushl   `\underline{~~~~~~~~~~~~~}`
    pushl   `\underline{~~~~~~~~~~~~~}`
    pushl   `\underline{~~~~~~~~~~~~~}`
    call    f
    addl    $16, %esp
    leave
    ret
// \songti \upshape 当N=2时，生成的汇编代码片段。

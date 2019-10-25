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
    movl    `\underline{~~~}`, 12(%ebp)
    movb    $65, `\underline{~~~~~~~}`
    subl    $8, %esp
    movl    `\underline{~~~~~~}`, %eax
    subl    $24, %esp
    movl    %esp, %edi
    movl    %eax, %esi
    cld
    movl    `\underline{~~~~~~}`, %eax
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
// \songti \upshape rep movsl为数据传送指令，即，由源地址esi开始的ecx个字的数据传送到由edi指示的目的地址。
// \songti \upshape 当N=11时，生成的汇编代码片段

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
`\uwave{~~~~leal~~~~-40(\%\color{blue}{ebp}), \%\color{blue}{edi}}`
`\uwave{~~~~movl~~~~\$.LC0, \%\color{blue}{esi}}`
`\uwave{~~~~\color{blue}{cld}}`
`\uwave{~~~~movl~~~~\$6, \%\color{blue}{eax}}`
`\uwave{~~~~movl~~~~\%\color{blue}{eax}, \%\color{blue}{ecx}}`
`\uwave{~~~~\color{blue}{rep}}`
`\uwave{~~~~movsl}`
    movl    $6, -44(%ebp)
    movl    $7, -48(%ebp)
    leal    -40(%ebp), %eax
    addl    `\underline{~~~~~~~~~~~~~~~}`
    movl    %eax, -52(%ebp)
    subl    $8, %esp
    movl    -52(%ebp), %eax
    subl    $`\underline{~~~~~~~~~}`, %eax
    pushl   `\underline{~~~~~~~~~~~~~~~}`
    pushl   $.LC1
    call    printf
    addl    $`\underline{~~~~~~~~~}` , %esp
    movl    $0, %eax
    leal    `\underline{~~~~~~~~~~}`, %esp
    popl    %esi
    popl    %edi
    leave
    ret
// \upshape \songti 第五题汇编代码片段

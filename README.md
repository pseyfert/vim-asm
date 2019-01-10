# vim-asm

This is a small extension for vim's syntax highlighting for filetype=asm.

When disassembled with `objdump -l [-D -C]` the lines of sources are added to the disassembly like this:

```asm

0000000000000000 <bar()>:
   0:   55                      push   %rbp
   1:   48 89 e5                mov    %rsp,%rbp
   4:   48 83 ec 10             sub    $0x10,%rsp
/tmp/foo.cc:3
   8:   48 c7 45 f8 00 00 00    movq   $0x0,-0x8(%rbp)
   f:   00 
/tmp/foo.cc:4
  10:   48 8b 45 f8             mov    -0x8(%rbp),%rax
  14:   48 89 c7                mov    %rax,%rdi
  17:   e8 00 00 00 00          callq  1c <bar()+0x1c>
/tmp/foo.cc:5
  1c:   c9                      leaveq
  1d:   c3                      retq

000000000000001e <baz(int)>:
_Z3bazi():
/tmp/foo.cc:7
  1e:   55                      push   %rbp
  1f:   48 89 e5                mov    %rsp,%rbp
  22:   48 83 ec 10             sub    $0x10,%rsp
  26:   89 7d fc                mov    %edi,-0x4(%rbp)
/tmp/foo.cc:8
  29:   e8 00 00 00 00          callq  2e <baz(int)+0x10>
  2e:   0f af 45 fc             imul   -0x4(%rbp),%eax
/tmp/foo.cc:9
  32:   c9                      leaveq
  33:   c3                      retq
```

I added recognition for the `<filename>:<linenumber>` matching. The
highlighting is defined in `after/syntax/asm.vim`. The colours are inspired by
those used by `grep` and `ripgrep`. I also added the conceal feature of vim.
This is only prepared in `after/syntax/asm.vim` but also add a shortcut in
`after/ftplugin/asm.vim`, which conceals/reveals the source location upon
hitting F6.

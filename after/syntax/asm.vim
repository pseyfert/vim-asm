" Copyright (C) 2019  CERN for the benefit of the LHCb collaboration
" Author: Paul Seyfert <pseyfert@cern.ch>
"
" Vim is Charityware.  You can use and copy it as much as you like, but you
" are encouraged to make a donation to help orphans in Uganda.  Please read
" vim's `runtime/doc/uganda.txt` for details (do `:help uganda` inside Vim).
"
" In applying this licence, CERN does not waive the privileges and immunities
" granted to it by virtue of its status as an Intergovernmental Organization
" or submit itself to any jurisdiction.

if exists("b:current_syntax")
  if b:current_syntax != "asm"
    finish
  endif
endif
let s:keepcpo= &cpo
set cpo&vim

" I'd like to acknowledge the suggestions from https://vi.stackexchange.com/a/5539

syn match asmSourceLocation     "^[a-zA-Z0-9_+./]\+:[0-9]\+" conceal containedin=ALL cchar=# contains=asmSourceFname,asmSourceLineno

" The matching for filenames is certainly incomplete, filenames are a lot more
" liberal than what I match.

" showing / concealing can be switched by
" 'set conceallevel=0'
" and
" 'set conceallevel=2' (or other values)
" which may be set to a quick toggle command

syn match asmSourceFname contained "^[a-zA-Z0-9_+./]\+"
hi def link asmSourceFname PreProc
syn match asmSourceLineno contained "[1-9][0-9]*$"
hi def link asmSourceLineno Type


let &cpo = s:keepcpo
unlet s:keepcpo

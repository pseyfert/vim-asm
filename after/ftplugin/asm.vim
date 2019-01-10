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

nnoremap <F6> :call ToggleConceal()<cr>
function! ToggleConceal()
  if &conceallevel == 0
    set conceallevel=3
  else
    set conceallevel=0
  endif
endfunction
set conceallevel=0


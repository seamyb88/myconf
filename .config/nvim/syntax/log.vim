" Vim syntax file
" Language:         Generic log files
" Maintainer:       Alex Dzyoba <avd@reduct.ru>
" Latest Revision:  2013-03-08
" Changes:          2013-03-08 Initial version

" Based on messages.vim - syntax file for highlighting kernel messages

if exists("b:current_syntax")
  finish
endif

syn match warn "warning"
syn match err "error"
syn match path "\([A-Za-z_0-9]\+/\)\+\([A-Za-z_0-9]\+.c\):[0-9]\+:[0-9]\+"


hi def link warn Special
hi def link err  red
hi def link path  dblue
hi def link symbs  white

let b:current_syntax = "log"

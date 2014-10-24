if !exists("b:current_syntax")
  finish
endif

if b:current_syntax != "godoc"
  finish
endif

" Apply go syntax for godoc
let s:old_syntax = b:current_syntax
unlet b:current_syntax
source $GOROOT/misc/vim/syntax/go.vim
let b:current_syntax = s:old_syntax

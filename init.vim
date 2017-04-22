" vim: sw=4

call plug#begin('~/.local/share/nvim/plugged')
runtime plugin-list.vim
call plug#end()

runtime options.vim
runtime plugin-options.vim
runtime keybindings.vim
runtime hooks.vim

" The following plugins are automatically loaded:
"
" plugin/lint.vim
" plugin/terminal.vim

autocmd BufEnter term://* startinsert

au BufRead,BufNewFile package.yaml setlocal filetype=yaml.hpack

" workaround needed when you use elzr/vim-json with indentLine
" https://github.com/elzr/vim-json/issues/23
autocmd InsertEnter *.json setlocal concealcursor=
autocmd InsertLeave *.json setlocal concealcursor=inc

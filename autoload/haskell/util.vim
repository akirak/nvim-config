" taken from https://github.com/dag/vim2hs/blob/master/autoload/vim2hs/haskell/snippets.vim
function haskell#util#getModuleName()
    let l:path = substitute(expand('%:r'), '\%(\U[^/]*/\)*', '', '')
    return substitute(l:path, '/', '.', 'g')
endfunction


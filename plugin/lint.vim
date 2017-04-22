finish

let g:auto_async_lint = 1
fu s:AsyncLint()
    if !g:auto_async_lint
        return
    endif

    if expand('%') =~ "\.hs$"
        GhcModCheckAndLintAsync
    else
        Neomake
    endif
endfu
autocmd BufWritePost,BufEnter * silent call <sid>AsyncLint()
command AutoLintEnable   silent let g:auto_async_lint = 1
command AutoLintDisable  silent let g:auto_async_lint = 0

" currently this feature has been disabled.
finish

" Automatically save the session only inside specific directories
let g:session_autosave_prefixes = [
            \ $HOME."/code/",
            \ $HOME."/code2/",
            \ $HOME."/.config/",
            \ $HOME."/tmp/",
            \ ]
function s:saveSession()
    for prefix in g:session_autosave_prefixes
        if stridx(getcwd(), prefix) == 0
            mksession! Session.vim
            break
        endif
    endfor
endfunction
autocmd VimLeave * call <SID>saveSession()


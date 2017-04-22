if !exists('g:autoformat_enabled')
  let g:autoformat_enabled = 0
endif

fu s:AutoFormat()
  if exists('&formatprg')
    exec "%!".&formatprg
  else
    echoerr "formatprg is undefined"
  endif
endfu

com AutoFormat call <sid>AutoFormat()

fu s:AutoFormatOnWrite()
  if exists('b:autoformat_enabled')
    if b:autoformat_enabled
      silent AutoFormat
    endif
    return
  endif

  if exists('g:autoformat_enabled')
    if g:autoformat_enabled
      silent AutoFormat
    endif
    return
  endif
endfu

com AutoFormatEnable let g:autoformat_enabled = 1
com AutoFormatDisable let g:autoformat_enabled = 0

augroup autoformat
  au!
  au BufWritePost * call <sid>AutoFormatOnWrite()
augroup END

au FileType haskell setlocal formatprg=stylish-haskell

command -nargs=* TermBottom
      \ bot split
      \ | terminal <args>

" Custom commands based on :TermBottom
" yarn (JavaScript): add/remove packages quickly
command -nargs=* Yarn TermBottom yarn <args>
command -nargs=+ YarnAdd TermBottom yarn add <args>
command -nargs=+ YarnRemove TermBottom yarn remove <args>

command -nargs=0 SpawnPlugInstall
      \ silent Term cd ~; env -u GIT_DIR -u GIT_WORK_TREE nvim +PlugInstall


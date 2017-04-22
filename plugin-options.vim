" vim: foldlevel=0:foldmethod=marker

" airline {{{

let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" }}}

" startify {{{

let g:startify_session_dir = '~/.local/share/nvim/session'
" Restore automatically-saved Session.vim
let g:startify_session_autoload = 1
" Clear current buffers when manually restoring a session
let g:startify_session_delete_buffers = 0
" Change directory when visiting a file from the startup page
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1

" }}}

" ctrlp {{{

let g:ctrlp_extensions = [ 'tag', 'quickfix' ]
let g:ctrlp_types = ['fil', 'buf']
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_switch_buffer = 'e'
let g:ctrlp_match_window = 'max:20'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_show_hidden = 0
let g:ctrlp_max_files = 1000

if executable("ag")
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

" }}}

" auto-pairs {{{

" Disable the fly mode of auto-pairs
let g:AutoPairsFlyMode = 0
" Disable keybindings for the unique features provided by auto-pairs
" Disable keybinding for toggling all the features
let g:AutoPairsShortcutToggle = ''
" Disable the keybinding for jumping
let g:AutoPairsShortcutJump = ''

" }}}

" deoplete {{{

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_ignore_case = 1

autocmd CompleteDone * pclose!

" }}}

" neomake {{{

let g:neomake_open_list = 2

let g:neomake_json_enabled_makers = []
let g:neomake_haskell_enabled_makers = []
let g:neomake_javascript_enabled_makers = []

" }}}

" Goyo {{{

" Turn on/off LimeLight when entering/leaving Goyo respectively
autocmd! User GoyoEnter nested Limelight
autocmd! User GoyoLeave nested Limelight!

" }}}

" tern_for_vim {{{

let g:tern_request_timeout = 1

" let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

" }}}

" gist {{{

let g:gist_post_private = 1

" }}}

" elm {{{

" disable the default keybindings installed by elm plugin
let g:elm_setup_keybindings = 0

" }}}

" echodoc for VimL {{{

" activate vim documentation on an item under cursor
let g:echodoc_enable_at_startup = 1

" }}}

" NERDTree {{{

let NERDTreeWinSize = 25

" }}}

" indentLine {{{

" recommended when you use elzr/json
" https://github.com/elzr/vim-json/issues/23#issuecomment-40293049
" also see hooks.vim
let g:indentLine_noConcealCursor=""

" }}}

" Vison JSON {{{

if exists(':Vison')
  autocmd BufRead,BufNewFile package.json Vison
endif

" }}}

" javascript-libraries {{{

let g:used_javascript_libs = 'underscore,vue'

" }}}

" UltiSnips {{{

let g:UltiSnipsEditSplit = 'horizontal'
if has('nvim')
  let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
endif

" }}}

" syntastic {{{

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_haskell_checkers = ['hdevtools']

" }}}

" asyncrun {{{

" trim empty lines in the quickfix window
let g:asyncrun_trim = 1

" notify when a background job finishes
if strlen($DISPLAY) != 0
  let g:asyncrun_exit = 'silent !notify-send --app-name=nvim "A background job has finished"'
else
  let g:asyncrun_exit = 'echo "asyncrun: A background job has finished"'
endif

" autocmd User AsyncRunPre copen
augroup AsyncRun
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

" }}}

" vim-test {{{

let test#strategy = "asyncrun"

" }}}

" neoterm {{{

let g:neoterm_keep_term_open = 1
let g:neoterm_size = 15

" }}}

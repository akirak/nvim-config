" Configuration
Plug 'editorconfig/editorconfig-vim'

" Appearance
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Disable devicons as those patched fonts are problematic in CJK environment
" Plug 'ryanoasis/vim-devicons'

" Editor
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/vim-cursorword'
Plug 'vim-scripts/sudo.vim'

" completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Formatting
Plug 'junegunn/vim-easy-align'
" Plug 'Chiel92/vim-autoformat'

" Linting
Plug 'vim-syntastic/syntastic', { 'on': 'SyntasticCheck' }
Plug 'skywind3000/asyncrun.vim'
Plug 'janko-m/vim-test'

" Session management
Plug 'mhinz/vim-startify'

" Version control and content management
Plug 'tpope/vim-fugitive'
Plug 'mattn/gist-vim'
" required by gist-vim
Plug 'mattn/webapi-vim'

" user interface
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kassio/neoterm'

" syntax highlighting and indenting
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'posva/vim-vue'
Plug 'kchmck/vim-coffee-script'
Plug 'travitch/hasksyn' " Haskell
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'stephpy/vim-yaml'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'raichoo/purescript-vim'
Plug 'cespare/vim-toml'

" Writing HTML
Plug 'Valloric/MatchTagAlways'
Plug 'mattn/emmet-vim'

" javascript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Provide convenient commands for JavaScript editing powered by tern
Plug 'ternjs/tern_for_vim'

" json
Plug 'Quramy/vison'

" haskell
" provides completion source for deoplete
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
" required by ghcmod-vim
Plug 'Shougo/vimproc.vim', { 'do': ':VimProcInstall' }
" syntax checking, splice expansion, etc.
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
" hoogle
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }

" Elm
Plug 'ElmCast/elm-vim'

" Vimscript
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'


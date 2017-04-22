set background=dark
colorscheme hybrid_material
let g:airline_theme = "hybrid"

set autoindent
set autoread
set autowrite
set colorcolumn=+1
set cursorline
set directory=/var/tmp
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars+=tab:»·,trail:·
set mouse=a
set nobackup
set noshowmode
set number
set shiftwidth=2
set shortmess+=r
set showmatch
set tabstop=2
set wildignore+=_book
set wildignore+=cabal-sandbox.config,.stack-work
set wildignore+=dist
set wildignore+=*.exe
set wildignore+=*.hi,*.o
set wildignore+=node_modules
set wildignore+=Session.vim
set wildignore+=tags
set wildmenu
set wildmode=longest,list:full

au FileType gitcommit setlocal spell
au FileType haskell setlocal iskeyword+=.
au FileType haskell setlocal shiftwidth=4

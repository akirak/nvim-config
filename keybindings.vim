cnoremap <C-a> <Home>
cnoremap <c-b> <Left>
cnoremap <c-d> <Delete>
cnoremap <C-f> <Right>
inoremap <C-a> <C-o>^
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <c-s> <c-o>:update<cr>
nnoremap <c-l> :silent nohlsearch<cr><c-l>
nnoremap <c-q> :qa<cr>
nnoremap <c-s> :update<cr>
nnoremap Q gqap
nnoremap Y y$

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
xnoremap <silent> gf :Autoformat<cr>

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let mapleader = ','
let maplocalleader = ',,'

nnoremap <silent> <leader>c :SyntasticCheck<cr>
nnoremap <silent> <leader>e :UltiSnipsEdit<cr>
nnoremap <silent> <leader>f :NERDTreeFind<cr>
nnoremap <silent> <leader>l :cclose<cr>
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <silent> <leader>q :Autoformat<cr>
nnoremap <leader>rr :AsyncRun<space>
nnoremap <silent> <leader>rs :AsyncStop<cr>
nnoremap <silent> <leader>rS :AsyncStop!<cr>
nnoremap <leader>s :Gstatus<cr>
" nnoremap <leader>t :TermBottom<cr>
nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ts :TestSuite<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>to :TestVisit<CR>
nnoremap <silent> <leader>x :cclose<cr>
nnoremap <silent> <localleader><leader> :Goyo<cr>

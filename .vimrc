" sane defaults, no plugin manager required
syntax on
filetype plugin indent on

set number relativenumber
set tabstop=4 shiftwidth=4 expandtab
set smartindent
set ignorecase smartcase
set incsearch hlsearch
set scrolloff=4
set undofile undodir=~/.vim/undo
set wildmenu
set laststatus=2

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

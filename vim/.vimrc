execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab fileformat=unix
set number incsearch hlsearch
colorscheme Tomorrow-Night-Bright
set pastetoggle=<F2>

" Protobuf highlighting
augroup filetype
    au! BufRead,BufNewFile *.prototxt setfiletype proto
augroup end

" Disable auto commenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" NERDCommenter
let mapleader = ","
let g:NERDSpaceDelims = 1

" LaTeX (rubber) macro
nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>

" Fix backspace 'feature'
set backspace=indent,eol,start

" Custom key bindings
inoremap jk <ESC>
nnoremap j gj
nnoremap k gk

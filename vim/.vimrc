execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 fileformat=unix
set number incsearch hlsearch ruler
" colorscheme space-vim-dark
colorscheme dracula

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

" Quick exit from insert mode
inoremap jk <ESC>

" Navigating long lines
nnoremap j gj
nnoremap k gk

" Quick saving
nmap <leader>w :w<cr>
nmap <leader>q :wq<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Quickly open some files
map <leader>vim :e ~/.vimrc<cr>
map <leader>bash :e ~/.bashrc<cr>
map <leader>readme :e ./README.md<cr>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // */*<left><left><left><left><left>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Updatetime
set updatetime=250

" Highlight 80 chars in red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" shortcut for navigating through tags
nnoremap <leader>. :CtrlPTag<cr>

" tagbar
nmap <leader>t :TagbarToggle<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

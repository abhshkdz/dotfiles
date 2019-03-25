call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'uarun/vim-protobuf'
Plug 'jakezhaojb/vim-torch-snipmate'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'gpakosz/.tmux'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/space-vim-dark'
Plug 'dracula/vim'
Plug 'wakatime/vim-wakatime'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rakr/vim-one'

call plug#end()

syntax on
filetype plugin indent on

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 fileformat=unix
set number incsearch hlsearch ruler
colorscheme one

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
set colorcolumn=80

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

" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" True colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark

execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
colorscheme Monokai

" Syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Protobuf highlighting
augroup filetype
    au! BufRead,BufNewFile *.prototxt setfiletype proto
augroup end

" Disable auto commenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

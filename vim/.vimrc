execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
colorscheme BlackSea

" Protobuf highlighting
augroup filetype
    au! BufRead,BufNewFile *.prototxt setfiletype proto
augroup end

" Disable auto commenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

call plug#begin()

" file explorer
Plug 'scrooloose/nerdtree'

" git plugin
Plug 'tpope/vim-fugitive'

" fuzzy file finder
Plug 'kien/ctrlp.vim'

" markdown stuff
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" colorschemes
Plug 'AlessandroYorba/Alduin'
Plug 'Konstruktionist/vim' "kafka
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'pkukulak/idle'

call plug#end()

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
colorscheme idle

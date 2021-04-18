" Enable syntax
syntax on

" Numbers
set nu
set relativenumber

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Indentation
set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set backspace=indent,eol,start

" Swap & Backup
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" Search
set ignorecase
set smartcase
set incsearch

" Misc
set belloff=all
set noerrorbells
set nowrap
set laststatus=2
set ttimeoutlen=50
set updatetime=300
set noshowmode
set list
set so=3
set siso=5
set mouse=a

" Buffers
set hidden

" Graphical
set termguicolors

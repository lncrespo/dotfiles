" VimPlug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Themes
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'

call plug#end()

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
set undodir=~/.vim/undodir
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

" Graphical
set termguicolors

" Keybindings
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocFix <CR>
nmap <space>d :call CocActionAsync('jumpDefinition') <CR>

"let g:gruvbox_material_palette = 'mix'
"let g:gruvbox_material_background = 'medium'
let g:airline_theme = 'edge'
let g:airline_powerline_fonts = 1

colorscheme edge


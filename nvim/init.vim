" VimPlug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'nelsyeung/twig.vim'

" Themes
Plug 'sainnhe/gruvbox-material'

Plug 'vim-airline/vim-airline-themes'
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
set list

" Graphical
set termguicolors

" Keybindings
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocFix <CR>
nmap <space>d :call CocActionAsync('jumpDefinition') <CR>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_background = 'medium'
let g:airline_powerline_fonts = 1

colorscheme gruvbox-material


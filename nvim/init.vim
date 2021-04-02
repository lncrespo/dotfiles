" VimPlug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'nelsyeung/twig.vim'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

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
set so=3
set siso=5

" Buffers
set hidden

" Graphical
set termguicolors

" Keybindings
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocFix <CR>
nmap <space>a :CocAction <CR>
nmap <space>d :call CocActionAsync('jumpDefinition') <CR>
nmap <space>h :call CocActionAsync('doHover') <CR>
nmap <space>re :call CocActionAsync('jumpReferences') <CR>
nmap <space>rn :call CocActionAsync('rename') <CR>
nmap <space>cs :call CocActionAsync('format') <CR>
nmap <space>gd :call CocActionAsync('fold') <CR>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_background = 'medium'
let g:airline_powerline_fonts = 1
let g:gruvbox_material_enable_bold = 1

inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme gruvbox-material

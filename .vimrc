" Basic setup
set number	
set linebreak	
set showbreak=+++ 	
set textwidth=100	
set showmatch	
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
set autoindent	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	
set ruler	
set undolevels=2000	
set backspace=indent,eol,start	
set laststatus=2
set noshowmode
set foldmethod=indent
set foldcolumn=1

" Auto-close brackets, quotes, etc
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Plugins managed by vim-plug
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Theme configuration
colorscheme catppuccin-latte
let g:lightline = {'colorscheme': 'catppuccin'}

" Emmet setup for HTML and CSS only
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ALE configuration below, add line to CocConfig -> diagnostic.displayByAle: true
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight ALEWarning ctermbg=Magenta ctermfg=White
highlight ALEError ctermbg=Red ctermfg=White
let g:ale_lint_on_text_changed = 'always'

" CoC use <CR> to select completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" CoC list of plugins
" coc-tsserver
" coc-json
" coc-clangd
" coc-java
" @yaegassy/coc-pylsp 

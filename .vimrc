" Basic configuration
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
set undolevels=1000	
set backspace=indent,eol,start
set laststatus=2

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
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Emmet configuration for HTML and CSS only
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Theme color configuration
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
set background=light
colorscheme PaperColor

" ALE configuration below, add following line in CocConfig -> diagnostic.displayByAle: true
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 'always'
highlight ALEWarning ctermbg=Magenta ctermfg=White
highlight ALEError ctermbg=Red ctermfg=White

" CoC configuration to use <CR> for selection of completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" CoC list of plugins
" coc-json
" coc-tsserver
" coc-clangd
" coc-snippets
" @yaegassy/coc-pylsp

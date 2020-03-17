" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-endwise'
	Plug 'sheerun/vim-polyglot'
	Plug 'luochen1990/rainbow'
	Plug 'ap/vim-css-color'
	Plug 'vim-airline/vim-airline'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
	Plug 'junegunn/fzf'
	Plug 'airblade/vim-gitgutter'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'dense-analysis/ale'
	Plug 'jlanzarotta/bufexplorer'
call plug#end()


" Deoplete stuff
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['solargraph', 'stdio'],
		\ 'rust': ['rust-analyzer'],
		\ 'go': ['gofmt'],
		\ }

" ALE configs
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_linters_explicit = 1
let g:ale_set_highlights = 0
let g:ale_linters = { 'ruby': ['standardrb'], 'go': ['gopls'] }
let g:ale_sign_style_error = '❌'
let g:ale_enabled = 1
let g:ale_fixers = { 'ruby': ['standardrb'], 'go': ['gofmt'], '*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1

" Random plugin configs
let g:rainbow_active = 1
noremap <silent> <C-\> :NERDTreeToggle<CR>

" General config
colorscheme dracula
syntax enable
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set backspace=2
set foldmethod=syntax
set foldlevelstart=99 " Don't fold by default
set mouse=a
set number
let mapleader = ","

" Filetype specific settings
autocmd Filetype ruby setlocal ts=2 sw=2 et

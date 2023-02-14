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
	Plug 'junegunn/fzf'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'dense-analysis/ale'
	Plug 'jlanzarotta/bufexplorer'
	Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
	Plug 'tpope/vim-rails'
	Plug 'rstacruz/vim-closer'
	Plug 'tpope/vim-dispatch'
	Plug 'tpope/vim-eunuch'
call plug#end()


" Deoplete stuff
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['solargraph', 'stdio'],
		\ 'rust': ['rust-analyzer'],
		\ 'go': ['gopls'],
		\ }
let g:LanguageClient_rootMarkers = {
		\ 'ruby': ['Gemfile']
		\ }

let mapleader = ","
nnoremap <silent> <leader>, :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <leader>d :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>r :call LanguageClient#textDocument_rename()<CR>

" ALE configs
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_linters_explicit = 1
let g:ale_set_highlights = 0
let g:ale_linters = { 'ruby': ['standardrb'], 'go': ['gopls'], 'terraform': ['tflint'], 'rust': ['analyzer'] }
let g:ale_sign_style_error = '❌'
let g:ale_enabled = 1
let g:ale_fixers = { 'ruby': ['standardrb'], 'go': ['gofmt'], 'terraform': ['terraform'], 'rust': ['rustfmt'], '*': ['remove_trailing_lines', 'trim_whitespace']}
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

" double tap esc to dehighlight the last search
nnoremap <esc><esc> :noh<return><esc>

"maintain selection fixing indent
vnoremap > >gv
vnoremap < <gv
vnoremap = =gv

" Filetype specific settings
autocmd Filetype ruby setlocal ts=2 sw=2 et

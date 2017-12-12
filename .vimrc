" Vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
set shell=/bin/sh

" Plugins
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'saltstack/salt-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'dsawardekar/ember.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'luochen1990/rainbow'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'ap/vim-css-color'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'Konfekt/FastFold'

" More Vundle stuff
call vundle#end()
filetype plugin indent on

" Neocomplete stuff
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
set completeopt-=preview

" Random plugin configs
let g:startify_custom_header = ['']
let g:rainbow_active = 1
noremap <C-\> :TagbarToggle<CR>

" General config
syntax enable
set shiftwidth=2
set tabstop=2
colorscheme monokai
set backspace=2
if has('gui_running')
	set guifont=Inconsolata\ Medium\ 12
endif
set foldmethod=syntax
set foldlevelstart=99 " Don't fold by default

" Filetype specific settings
autocmd Filetype ruby setlocal ts=2 sw=2 et


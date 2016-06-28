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
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-bundler'
Plugin 'finetralfazz/vim-fastexec'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-eunuch'
Plugin 'saltstack/salt-vim'
Plugin 'stephpy/vim-yaml'
Plugin 'Shougo/neocomplete.vim'

" More Vundle stuff
call vundle#end()
filetype plugin indent on

" General config
syntax enable
set shiftwidth=2
set tabstop=2
colorscheme monokai
set backspace=2

" Filetype specific settings
autocmd Filetype ruby setlocal ts=2 sw=2 et


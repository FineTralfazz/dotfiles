" Vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
set shell=/bin/bash

" Plugins
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'jeaye/color_coded'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-bundler'
Plugin 'finetralfazz/vim-fastexec'

" More Vundle stuff
call vundle#end()
filetype plugin indent on

" General config
syntax enable
set shiftwidth=2
set tabstop=2
colorscheme monokai


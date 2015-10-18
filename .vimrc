" Vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
set shell=/bin/bash

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sickill/vim-monokai'

" More Vundle stuff
call vundle#end()
filetype plugin indent on

" General config
syntax enable
set shiftwidth=2
set tabstop=2
colorscheme monokai


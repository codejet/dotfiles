" Base
set nocompatible
syntax enable
set encoding=utf-8
set number
set guifont=Monaco:h14
set hlsearch

" Remove scrollbars
set guioptions=A

" Vundle start
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
" Vundle end

" Color Scheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs

function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" Save when losing focus
au FocusLost * :silent! wall

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Airline
set laststatus=2

" Nerdtree
set guioptions=A
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.DS_Store']

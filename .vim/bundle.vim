" Install Vundle if it is not already installed
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'

" Vundles list
Plugin 'suan/vim-instant-markdown'
Plugin 'pearofducks/ansible-vim'
Plugin 'ycm-core/YouCompleteMe'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

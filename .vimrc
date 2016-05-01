set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'

Plugin 'lukerandall/haskellmode-vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin on
filetype indent off
set tabstop=4
set autoindent
set nu

colorscheme elflord
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

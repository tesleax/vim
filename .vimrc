" For Gnome-Terminal"
set t_Co=256

" General Settings

syntax on
colorscheme hybrid
set background=dark
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4
set ruler
set cursorline
set hlsearch
set scrolloff=4
set history=100
set nocompatible
set showmatch
set ignorecase
let mapleader = ','

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'eodus/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Ntpeters/vim-better-whitespace'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
filetype plugin indent on

" disable swap files

set nobackup
set noswapfile

" NerdTree

nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUi = 1
let NERDTreeDirArrows = 1

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "✗"

" Vim-Airline

let g:airline_theme='bubblegum'
set laststatus=2
let g:airline_powerline_fonts=1

" CtrlP

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ultisnippets
" make YCM compatible with UltiSnips (using supertab)

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Auto-Format

noremap <F3> :Autoformat<CR>

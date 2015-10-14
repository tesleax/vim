"For Gnome-Terminal"
set t_Co=256
execute pathogen#infect()
syntax on
colorscheme badwolf 
set number
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4
set ruler
set cursorline
set hlsearch
set scrolloff=4

" NerdTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Syntastic 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "✗"

" Vim-Airline

let g:airline_theme='murmur'
set laststatus=2
let g:airline_powerline_fonts=1
let g:syntastic_python_python_exec = '/usr/bin/pythonw'

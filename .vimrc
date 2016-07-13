"""""""""""""""""""""""""""""""""""""""""
"Initial Setup Things
"""""""""""""""""""""""""""""""""""""""""
set nocompatible	" requried 
filetype off		" required

"""""""""""""""""""""""""""""""""""""""""
"GUI options i.e. line numbers, syntax, ruler
"""""""""""""""""""""""""""""""""""""""""
syntax on
set nu
set ruler
	
"""""""""""""""""""""""""""""
"Key mappings
"""""""""""""""""""""""""""""
":nmap \l :setlocal number!<CR> "toggle linenumbers
":nmap \o :set paste!<CR> 
map <F2> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""
"Vundle settings
"""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
"Syntastics options/Linter(is it a linter?
"""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""
"Highlight excess line lenghth
"""""""""""""""""""""""""""""

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

""""""""""""""""""""""""""""""
"Misc setttings
""""""""""""""""""""""""""""""

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"add PEP8 indentation settings
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"add indent for web files
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8

let python_highlight_all=1
syntax on

set clipboard=unnamed

"VIM commands in shell
"set editing-mode vi


""""""""""""""""""""""""""""""
"Plugin settings
""""""""""""""""""""""""""""""

"Simplyfold - see docstring preview of folded code
let g:SimpylFold_docstring_preview=1

"Youcompleteme settings
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToD

"Hide .pyc files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree



"""""""""""""""""""""""""""""""""""""""""
"Colour scheme rules
""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
      	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
end

call togglebg#map("<F5>")


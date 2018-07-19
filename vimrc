" -----------------------------
" Vundle Configurations
" -----------------------------
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'craigemery/vim-autotag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-vinegar'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -----------------------------
" Shawn's Configurations
" -----------------------------
syntax enable                   " Enable syntax processing
let g:solarized_termtrans = 1   " Make background trasnparent
set background=dark             " Set background of solarized
colorscheme solarized           " Set color scheme
set autoindent                  " Auto indent
set textwidth=79                " Make it PEP 8·
set number                      " Show line numbers
set showcmd                     " Show command in bottom bar
set cursorline                  " Highlight current line
set wildmenu                    " Visual autocomplete for command menu
set lazyredraw                  " Redraw only when need to
set showmatch                   " Highlight matching [{()}]
set incsearch                   " Search as characters are selected
set hlsearch                    " Highlight matches
set splitbelow                  " Split below by default
set splitright                  " Split to the right by default
set list lcs=trail:·,tab:»·     " Show dots for tabs and line ends
set tabstop=4                   " Number of visual spaces per TAB
set softtabstop=4               " Number of spaces in tab when editing
set shiftwidth=4                " Set indentation of <> to 4
set expandtab                   " Tabs are spaces
set fileformat=unix             " Store the file as unix


" Web Development Settings
au BufNewFile,BufRead *.js,*.jsx,*.html,*.css,*.json,*.yml
    \ setlocal tabstop=2 |
    \ setlocal softtabstop=2 |
    \ setlocal shiftwidth=2 |

" Simplify Split Navigations·
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" JSX Plugin settings
let g:jsx_ext_required = 0

" Linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_python_checkers = ['flake8']

" ctags
set tags=tags;/

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*,*/node_modules/*,*/env/*
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Powerline
python import sys; sys.path.append("/Library/Python/2.7/site-packages")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2            " Set to always show powerline

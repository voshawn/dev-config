" -----------------------------
" Plugin Management
" https://github.com/junegunn/vim-plug
" :PlugUpdate to install or update the plugins
" -----------------------------
call plug#begin()

" List plugins here
Plug 'elixir-editors/vim-elixir'

call plug#end()


" -----------------------------
" Shawn's Configurations
" -----------------------------
syntax enable                   " Enable syntax processing
set background=dark             " Set background
colorscheme default             " Set color scheme
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

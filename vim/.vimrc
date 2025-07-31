""""""""""""""""""""""""""""""
"""USE VIMX""""""""""""""""""

set noswapfile 

" basic essentials
set nocompatible          " no vi compatibility set number                " show line numbers
set relativenumber        " relative line numbers
set showcmd               " show (partial) command in status line
set cursorline            " highlight current line
syntax on                 " enable syntax highlighting
filetype plugin indent on " enable filetype-specific plugins and indenting
set encoding=utf-8        " set default encoding
set hidden                " allow buffer switching without saving
set wildmenu              " enhanced command line completion
set lazyredraw             " redraw only when needed (faster)
set ttyfast                " faster redrawing
set updatetime=300         " faster completion

" indentation
set tabstop=4              " number of spaces tabs count for
set shiftwidth=4           " size of an indent
set expandtab              " use spaces instead of tabs
set autoindent             " indent automatically
set smartindent            " smart indenting

" searching
set hlsearch               " highlight search results
set incsearch              " incremental search
set ignorecase             " case insensitive search...
set smartcase              " ... unless capitals used
set noerrorbells           " no beeping

" clipboard support set clipboard=unnamedplus  " use system clipboard
set clipboard=unnamedplus

" appearance
colorscheme blue
set termguicolors" 24-bit rgb colors
set scrolloff=8            " start scrolling 8 lines before edge
set sidescrolloff=8
set signcolumn=yes         " always show the sign column


vnoremap <C-c> "+y

if executable('xclip')
  augroup Yank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' && v:event.regname == '+' | call system('xclip -selection clipboard', @+) | endif
  augroup END
endif

" make background transparent " highlight Normal ctermbg=black guibg=black 
 " highlight NonText ctermbg=black guibg=black 
 " highlight LineNr ctermbg=black guibg=black 
 " highlight SignColumn ctermbg=black guibg=black 
 " highlight VertSplit ctermbg=black guibg=black 
"
highlight Normal ctermbg=black guibg=#001417
highlight NonText ctermbg=black guibg=#001417
" highlight LineNr ctermbg=white guibg=#001412 
highlight LineNr ctermbg=white guibg=#00141A guifg=#ffffaa
highlight SignColumn ctermbg=white guibg=#001417
highlight VertSplit ctermbg=black guibg=black
highlight CursorLine ctermbg=black guibg=black
highlight CursorColumn ctermbg=black guibg=black 
highlight ColorColumn ctermbg=black guibg=black 
highlight EndOfBuffer ctermbg=black guibg=#001417


"""" TEST sync files

"set autoread
"autocmd FocusGained,BufEnter * checktime

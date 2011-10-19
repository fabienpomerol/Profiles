set tabstop=4
set shiftwidth=4
set expandtab                   "replace tabs by spaces
set shiftround                  "when at 3 spaces, and I hit > ... go to 4, not 5
set listchars=tab:>-,trail:.    "show tabs and trailing
set list

set ff=unix                     "Unix EOL
set fileencoding=UTF-8          "Speak UTF-8
set encoding=UTF-8              "Display UTF-8
set ignorecase                  "case sensitivity is dumb
set smartcase                   "if there are case, go case sensitive

set autoindent
set smartindent
set showmatch                   "show matching brackets
set nowrap                      "don't wrap line

set number                      "display line number
set ruler                       "Always show current position along the bottom
set showcmd                     "Show the command being typed

syntax on                       "enable syntax highlighting
colorscheme solarized
set background=dark

" template
autocmd BufRead *.twig set filetype=htmljinja

set nocompatible                "don't be compatible with vi
set ignorecase                  "ignore case by default
set backspace=indent,eol,start  "enhance backspace
set mouse=a                     "use mouse everywhere
set nobackup                    "no .swp file
set iskeyword+=_,@,%            "none of these are word dividers

set cursorline                  "highlight line
set guifont=Monospace\ 10
set langmenu=en_US.UTF-8
set scrolloff=8                 " Keep x line for scope while scrolling
set sidescrolloff=8             " same same

" NERDTree
let g:NERDTreeWinPos = "left"

" Minibuffer
let g:miniBufExplMaxSize            = 2
let g:miniBufExplMapWindowNavVim    = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs  = 1
let g:miniBufExplModSelTarget       = 1

" Align
let g:loaded_AlignMapsPlugin = "v41"

" TagList settings
let Tlist_Auto_Open               = 0
let Tlist_Compact_Format          = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File           = 1
let Tlist_Use_Right_Window        = 0
let Tlist_Sort_Type               = "name"    " order by

" language specific
let tlist_php_settings = 'php;c:class;d:constant;f:function' " don't show variables in php

" Spell
augroup filetypedetect
au BufNewFile,BufRead *.rst setlocal spell spelllang=fr
augroup END

set nospell                     " disabled spelling

" Remap
let mapleader = ","
let g:mapleader = ","

"" NERDTree
noremap <leader>n :NERDTreeToggle<CR>

"" Bclose
noremap <leader>q :Bclose<CR>
noremap <leader>q! :Bclose!<CR>

"" Align
vnoremap <leader>a> :Align =><CR>
vnoremap <leader>a= :Align =<CR>

"" Tlist
noremap <leader>l :TlistToggle<CR>

"" Syntax validation

noremap <leader>s :! php -l %<CR>
noremap <leader>w :%s/\s\+$//<CR>

" To save ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

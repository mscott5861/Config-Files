"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
inoremap jk <ESC>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>>
nmap <C-l> <C-w>w
map <C-k> <C-w><
nnoremap <silent> <C-z> :FZF -m<cr>
nnoremap <ALT-p> :lprev<cr>
nnoremap <ALT-n> :lnext<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Prerequisites / Notes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. Run make in vimproc.vim plugin
" 2. Create ~/.vim/backup/swap
" 3. Install exuberant-ctags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.fzf
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/base16-xfce4-terminal'
Plug 'flazz/vim-colorschemes'
Plug 'vim-syntastic/syntastic'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'gregsexton/gitv'
Plug 'groenewege/vim-less'
Plug 'jacquesbh/vim-showmarks'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'mbadolato/iTerm2-Color-Schemes'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-node'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'sgerrand/xfce4-terminal-colors-solarized'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'   " requires compiling -- run `make` in vimproc.vim
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-quickrun'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'MarcWeber/vim-addon-mw-utils'       " required for vim-snipmate

Plug 'junegunn/vim-easy-align'

call plug#end()

set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-w': 'vsplit' }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0
nmap f <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>n <plug>NERDTreeTabsToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="tabdo"
let g:UltiSnipsSnippetsDir="/home/empedocles/.vim/my-snippets/UltiSnips"
let g:UltiSnipsSnippetDirectories=[$HOME . "/.vim/my-snippets/UltiSnips"]

nmap <leader>ue :UltiSnipsEdit<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history vim has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Place .swp files in /tmp
:set directory=/tmp//


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Show last command entered
set showcmd

" Show current line
set cursorline

" Command bar height
set cmdheight=1

" Hide buffers when abandoned
set hidden

" No annoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable


" Set colorscheme
" colorscheme darkblue

:hi CursorLine ctermfg=White ctermbg=Blue 

" Set encoding
set encoding=utf8

" Use Unix as standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Text, Tabbing, and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

set number

" Linebreak on 80 characters
set lbr
set tw=0

" Set auto indent
set autoindent

" Set smart indent
set smartindent

" Wrap lines
set wrap

" Delete trailing white spaces on save
func! DeleteTrailingWS()
    exec "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
" autocmd BufWrite *.pl :call DeleteTrailingWS()
" autocmd BufWrite *.php :call DeleteTrailingWS()
" autocmd BufWrite *.py :call DeleteTrailingWS()
map <leader>rw :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk

" Map <space> to center screen
map <space> zz

" Center screen when searching with next and previous
map n nzz
map N Nzz

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Tab management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Return to last position when opening files
if has("autocmd")
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \   exe "normal zz"   | 
    \ endif
endif

" Remember info about opened buffers on close
set viminfo^=%


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Language Manual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" placeholder "


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'serene'
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: Ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-o>'
" let g:ctrlp_cmd = 'CtrlP'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: javascript-libraries-syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'jquery,underscore,react'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: Syntastic (ESLinter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: EasyAlign (https://github.com/junegunn/vim-easy-align)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)



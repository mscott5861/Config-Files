" runtime! debian.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Prerequisites / Notes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. Run make in vimproc.vim plugin
" 2. Create ~/.vim/backup/swap
" 3. Install exuberant-ctags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set nocompatible
set rtp+=~/.fzf
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/base16-xfce4-terminal'
Plug 'flazz/vim-colorschemes'
"Plug 'gmarik/Vundle.vim'
Plug 'gregsexton/gitv'
Plug 'groenewege/vim-less'
Plug 'jacquesbh/vim-showmarks'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/ctrlp.vim'
" Plug 'Lokaltog/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'mbadolato/iTerm2-Color-Schemes'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-node'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
" Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
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
" Plug 'vim-scripts/taglist.vim'
" Plug 'vim-scripts/YankRing.vim'
Plug 'easymotion/vim-easymotion'
Plug 'MarcWeber/vim-addon-mw-utils'       " required for vim-snipmate
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0
nmap f <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history vim has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Read when a file is changed from the outside?
" set autoread

" Sets the <leader> to comma
"let mapleader=","
"let g:mapleader=","
"
" Faster saving
"nmap <leader>w :w!<cr>
"nmap <leader>q :bwipeout<cr>
"nmap <leader>oo :only<cr>
"
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
"set modeline
"set modelines=5
"function! AppendModeline()
"    let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
"        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
"    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
"    call append(line("$"), l:modeline)
"endfunction
"nnoremap <silent> <Leader>ml :call AppendModeline()<CR>
"

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

" Set background color
" set background=dark

" Set colorscheme
" colorscheme predawn

:hi CursorLine ctermfg=White ctermbg=Blue 

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set encoding
set encoding=utf8

" Use Unix as standard file type
set ffs=unix,dos,mac



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Files, backups, and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set backup directory
"set backupdir=~/.vim/backup/swap
"set directory=~/.vim/backup/swap
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Text, Tabbing, and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

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

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Close current buffer
map <leader>bd :wq!<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>

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
" => VIM Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
inoremap jk <ESC>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>>
nmap <C-l> <C-w>w
map <C-k> <C-w><
nnoremap <silent> <C-z> :FZF -m<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Language Manual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" placeholder "



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Windows ^M
"noremap <leader>M mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle paste mode
"map <leader>pp :setlocal paste!<cr>

"command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
"command! -range=% -nargs=0 Space2Tab execute '<line1>,<line2>s#^\( \{'.&ts.'\}\)\+#\=repeat("\t", len(submatch(0))/' . &ts . ')'



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
" => VIM Plugin: Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <leader>t :TlistToggle<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:unite_prompt='» '
"let g:unite_data_directory='~/.vim/cache/unite'
"let g:unite_source_history_yank_enable = 1
"let g:unite_source_file_rec_max_cache_files = 100000000
"let g:unite_source_grep_command = 'ag'
"let g:unite_source_grep_default_opts =
"      \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
"      \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
"let g:unite_source_grep_recursive_opt = ''
"
"" CtrlP search
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#filters#sorter_default#use(['sorter_rank'])
"call unite#custom#source('file_rec/async','sorters','sorter_rank')
"
"nnoremap <silent> <leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>
"nnoremap <leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>
"nnoremap <leader>f :Unite grep:.<cr>
"
"" replacing unite with ctrl-p
"nnoremap <silent> <C-p> :Unite -start-insert -buffer-name=files -winheight=10 file_rec/async<cr>
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: vim-less
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd BufNewFile,BufRead *.less set filetype=less
"autocmd FileType less set omnifunc=csscomplete#CompleteCSS
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plugin: YankRing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable the <Ctrl-P> mapping for YankRing -- conflicts with Unite / CtrlP
" let g:yankring_replace_n_pkey = '<m-p>'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Local
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if filereadable("/etc/vim/vimrc.local")
"    source /etc/vim/vimrc.local
"endif
"

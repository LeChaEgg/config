" myvimrc for nvim-mac local configuration
" Author: @lechaegg
"

" ==================== Terminal Behaviors Start====================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:python3_host_prog = '/opt/homebrew/bin/python3'
autocmd FileType json syntax match Comment +\/\/.\+$+
" ==================== Terminal Behaviors End====================
"
"
" ==================== Editor behavior Start====================
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_ut=''
set autochdir
set autoindent
set backspace=indent,eol,start
set backupdir=$HOME/.config/nvim/tmp/backup,.
set clipboard=unnamedplus
"set colorcolumn
set completeopt=longest,noinsert,menuone,noselect,preview
set cursorline
set cursorcolumn
set directory=$HOME/.config/nvim/tmp/backup,.
set encoding=utf-8
set expandtab
set exrc
set foldenable
set foldlevel=99
set foldmethod=indent
set formatoptions-=tc
set hlsearch
set ignorecase
set inccommand=split
set incsearch
set indentexpr=
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,trail:▫
set mouse=a
set noexpandtab
set noshowmode
set notimeout
set number
set relativenumber
set scrolloff=5
set signcolumn=yes
set secure
set shiftwidth=2
set shortmess+=c
set showcmd
set smartcase
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set title " Show file title
set ttimeoutlen=0
set tw=0
set updatetime=100
set viewoptions=cursor,folds,slash,unix
set virtualedit=block
set visualbell
set wildmenu
set wrap

silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
"silent !mkdir -p $HOME/.config/nvim/tmp/sessions
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
syntax on
" ==================== Editor behavior End====================
"
"
"
" ==================== Basic Mappings Start====================
let mapleader=" "
map ; :
map H 0
map L $
map R :source $MYVIMRC<CR>
map S :w<CR>
map Q :q<CR>
map s <nop>
map J 5j
map K 5k
inoremap jj <Esc>
map <LEADER>rc :edit ~/.config/nvim/init.vim<CR>
" ==================== Basic Mappings End====================
"
"
"
" ==================== Tab management Start====================
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tn and ti
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>
" ==================== Tab management End====================
"" ==================== Auto load for first time uses ====================
"if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	"silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				"\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"
"let g:nvim_plugins_installation_completed=1
"if empty(glob($HOME.'/.config/nvim/plugged/wildfire.vim/autoload/wildfire.vim'))
	"let g:nvim_plugins_installation_completed=0
	"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"
"" Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location 
"let has_machine_specific_file = 1
"if empty(glob('~/.config/nvim/_machine_specific.vim'))
	"let has_machine_specific_file = 0
	"silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
"endif
"source $HOME/.config/nvim/_machine_specific.vim






call plug#begin()

Plug 'vim-airline/vim-airline'

" Python
Plug 'vim-scripts/indentpython.vim'
" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
colorscheme monokai

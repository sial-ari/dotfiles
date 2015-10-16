set nocompatible
filetype on
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
syntax on

"Set search highlight
:set hlsearch


"Airline settings
set laststatus=2
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Vundle Settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'xolox/vim-misc'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'wikitopian/hardmode'
Bundle 'vim-ruby/vim-ruby'
Bundle 'andrep/vimacs'
"For scheme
Bundle 'kien/rainbow_parentheses.vim'

call vundle#end()

"Set colorscheme
colorscheme vividchalk

"Set rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

let g:rbpt_loadcmd_toggle = 0


set ofu=syntaxcomplete#Complete
set smartindent    			  " smart indent
set autoindent 				  " indent at the same level of the previous line
set smarttab                  " tab and backspace are smart
set expandtab  				  " Use spaces instead of tabs
set showcmd   				  " Display commands in the bottom right corner as they are typed.
set ttyfast  				  " Smoother redraws
set autoread   				  " Set to auto read when a file is changed from the outside
set nu 						  " show line numbers 
set history=100         	  " remember more commands and search history
set undolevels=100            " use many undo levels
set title                	  " change the terminal's title
set noerrorbells              " don't beep
set hidden  				  " allow hidden buffers
set nobackup  				  " disable backup
set noswapfile				  " don't create swap file
set wmnu  					  " show a list of all matches when tabbing a command

set wildignore=*.swp,*.bak,*.pyc,*.class,*.tmp
set wildmode=list,longest,full 	    	" command <Tab> completion, list matches, then longest common part, then all.

"For python :
set tabstop=4
set shiftwidth=4

set autochdir

set hidden

"Map "," to <leader>
let mapleader = ',' 

"For NERDTree
map <F2> :NERDTreeToggle<CR>

" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

"Delete buffer
nmap <leader>d :bd<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" For the annoying wrapped lines movement
:nmap j gj
:nmap k gk

"Sane search defaults
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

" For VimOrganizer
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()
let g:ft_ignore_pat = '\.org'
let g:org_agenda_select_dirs=["~/.org_files"]

" HardMode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
let g:VM_Enabled = 1

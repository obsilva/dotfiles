" User Vim settings rather than Vi settings
" Must be first as it changes other options
"set nocompatible			" Do not try to be Vi compatible

" Indentation options
filetype indent on			" Enable indentation rules that are file-type specific
set autoindent				" New lines inherit the indentation of previous lines
set noexpandtab				" Tabs are tabs. Do not replace tab with spaces
set shiftwidth=4			" Number of spaces to use for each step of indent
set tabstop=4				" Number of spaces that a tab counts for (1 tab = 4 spaces)
set softtabstop=4			" Number of spaces that a tab counts for (1 tab = 4 spaces) while in edit mode

" Search options
set hlsearch				" Highlight last search results
set incsearch				" Incremental search that shows partial matches. Search as characters are entered
set ignorecase				" Ignore case when searching
set smartcase				" Automatically switch search to case-sensitive when search query contains an uppercase letter

" Text rendering options
set encoding=utf-8			" Default encoding that supports unicode
syntax on					" Enable syntax highlighting/processing
filetype plugin on			" Enable syntax highlighting that are file-type specific
set linebreak				" Avoid wrapping a line in the middle of a word
set wrap					" Wrap lines longer than the width of the window
"set showbreak=↳↳			" Character that indicates a wrap line continuation
"set list					" Show invisible characters
set listchars=				" Create a new empty list
set listchars+=tab:>-		" Character to show for tabs
set listchars+=trail:·		" Character to show for trailing spaces
set listchars+=extends:»	" Character to show in the last column when 'wrap' is off
set listchars+=precedes:«	" Character to show in the first column when 'wrap' is off
set listchars+=nbsp:░		" Character to show for non-breakable spaces

" Spelling check options
set spell					" Enable spell checking
set spelllang=en_us,pt_br	" Set the spell checking languages

" User interface options
set laststatus=2			" Always display the status bar
set ruler					" Always show cursor position on status bar
set showcmd					" Display incomplete commands in command bar
set cursorline				" Highlight the line currently under cursor
set showmatch				" Highlight a matching [{()}] when cursor is placed on start/end character
set number					" Show line numbers on the sidebar
set relativenumber			" Show line number on the current line and relative numbers on all other lines
"set visualbell				" Flash the screen instead of beeping on errors (no sounds)
set title					" Set the window’s title, reflecting the file currently being edited
set background=dark			" Use colors that suit a dark background
set fillchars=vert:▒		" Character to use as a vertical separator

" Backup options
set nobackup				" Do not create a permanent backup before overwriting a file
set nowritebackup			" Do not create a temporary backup before overwriting a file
set noswapfile				" Do not use swapfile for the buffer
set confirm					" Display a confirmation dialog when closing an unsaved file
set backupdir=~/.cache/vim	" Directory to store backup files
set dir=~/.cache/vim		" Directory to store swap files

" History and undo history options
set history=1000			" Increase the commands history limit (default 20)
set undofile				" Saves the undo history to an undo file
set undodir=~/.cache/vim	" Directory to store undo files

" Tab completion options
set infercase				" When keyword completing, adjust the case depending on the typed text
set wildmenu				" Display command line’s tab complete options as a menu
set wildmode=longest,list,full	" Complete till longest common string, then list all matches and complete the next full match
set wildignorecase			" Ignore case when completing file names and directories

" Ignore files vim does not use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" Miscellaneous options
set packpath^=~/.config/vim		" Set the plugins path
set backspace=indent,eol,start	" Allow backspacing over indention, line breaks and insertion start
set clipboard=unnamed		" use the system clipboard for copy and paste
set autoread				" Automatically re-read files that have changed outside of vim
set splitbelow				" Make the new window appear below of the current one
set splitright				" Make the new window appear on the right of the current one

" Performance options
set lazyredraw				" Do not update screen during macro and script execution
set synmaxcol=512			" Do not highlight after 512 characters

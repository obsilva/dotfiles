" Text rendering options
"autocmd VimResized * :wincmd =							" Automatically rebalance windows on vim-resize
autocmd Bufread,BufNewFile *.md set filetype=markdown	" Vim interprets .md as 'modula2' otherwise, see :set filetype?

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid, when inside an event handler
" and for a commit message (it's likely a different one than last time).
autocmd BufReadPost *
	\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
	\ |   exe "normal! g`\""
	\ | endif


command Nows :%s/\s\+$//								" Remove trailing white space
command Nobl :g/^\s*$/d									" Remove blank lines
command SyncSyntax :syntax sync fromstart				" Sync syntax

packadd catppuccin							" Add theme before set the 'colorscheme'
colorscheme catppuccin						" Change color scheme

" Lightline
let g:lightline 					= {'colorscheme': 'catppuccin_mocha'}
let g:lightline.tabline				= {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand	= {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type		= {'buffers': 'tabsel'}
let g:lightline#bufferline#min_buffer_count	= 2			" Automatically show the tabline when 2 or more buffers opened
let g:lightline#bufferline#show_number  = 0				" Hide buffer number
let g:lightline#bufferline#unnamed      = '[No Name]'	" Default unnamed buffer name

" Buffergator
let g:buffergator_viewport_split_policy = 'R'		" Use menu at the right side of the screen
let g:buffergator_suppress_keymaps = 1				" Add my own keymaps
nmap <leader>bn :BuffergatorMruCycleNext<cr>		" Go to the next buffer open
nmap <leader>bp :BuffergatorMruCyclePrev<cr>		" Go to the previous buffer open

" NERDTree
let NERDTreeShowHidden = 1				" Show hidden files
map <C-n> :NERDTreeToggle<CR>			" CTRL + n shortcut to toggle on/off

" CtrlP
" Ignore listed directories when using ctrlp
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
	\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\ }
let g:ctrlp_working_path_mode = 'r'		" Use the nearest .git directory as the cwd
nmap <leader>p :CtrlP<cr>				" Use a leader instead of the actual named binding
nmap <leader>bm :CtrlPMixed<cr>			" Binding for mixed mode (files, buffer and MRU)

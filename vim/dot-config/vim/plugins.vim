function! PackInit() abort
	" Try to load minpac
	packadd minpac

	" Minpac is not available? Download it.
	if !exists('g:loaded_minpac')
		silent call system('mkdir -p ~/.config/vim/pack/minpac/opt/minpac')
		silent call system('git clone https://github.com/k-takata/minpac.git ~/.config/vim/pack/minpac/opt/minpac')
	endif

	" Is minpac available now? Handle the plugins
	if exists('g:loaded_minpac')
		call minpac#init()
		call minpac#add('k-takata/minpac', {'type': 'opt'})		" Minpac itself

		" Colors and style
		call minpac#add('dracula/vim', {'name': 'dracula'})		" Dracula color theme
		call minpac#add('catppuccin/vim', { 'name': 'catppuccin' })		" Catppuccin color theme
		"call minpac#add('ryanoasis/vim-devicons')				" Icon package for some plugins
		call minpac#add('itchyny/lightline.vim')				" Light status and tabline
		call minpac#add('mengelbrecht/lightline-bufferline')	" Bufferline

		" Utils
		call minpac#add('scrooloose/nerdtree')					" Tree file explorer
		call minpac#add('jeetsukumaran/vim-buffergator')		" List, select and switch between buffers
		"call minpac#add('ctrlpvim/ctrlp.vim')					" Full path fuzzy file, buffer...finder

		" Programming
		call minpac#add('sheerun/vim-polyglot')					" A collection of language packs
		"call minpac#add('ajh17/VimCompletesMe')					" Tab completion
		" A code-completion engine
		call minpac#add('ycm-core/YouCompleteMe', {'do': {-> system('python3 ~/.config/vim/pack/minpac/start/YouCompleteMe/install.py --clang-completer --java-completer')}})
	endif
endfunction

" Minpac commands
command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()

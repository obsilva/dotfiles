vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Open the directory explorer (netrw)
vim.keymap.set('n', '<leader>pv', vim.cmd.Explore)

-- Move lines up and down when in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Remove line break
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Copy to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Copy selection to clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = 'Copy line to clipboard' })

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], {
	desc = 'Delete selection without saving to register'
})

vim.keymap.set('i', '<C-c>', '<Esc>')

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = 'Go to next error' })
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = 'Go to previous error' })
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('n', '<leader>rwg', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
	desc = 'Replace all occurences of word under cursor'
})
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', {
	desc = 'Make file executable',
	silent = true
})

vim.keymap.set('n', '<leader><leader>', '<cmd>so<CR>', { desc = 'Reload configuration' })

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

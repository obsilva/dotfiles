return {
	'mbbill/undotree',
	enabled = false,

	config = function()
		vim.keymap.set('n', '<leader>su', vim.cmd.UndotreeToggle)
	end
}

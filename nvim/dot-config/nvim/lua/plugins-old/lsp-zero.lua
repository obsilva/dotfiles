return {
	'VonHeikemen/lsp-zero.nvim',
	enabled = false,
	branch = 'v3.x',
	dependencies = {
		-- To manage LSP servers from neovim
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		-- LSP Support
		'neovim/nvim-lspconfig',
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip',
	},

	config = function()
		local lsp_zero = require('lsp-zero')

		lsp_zero.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp_zero.default_keymaps({ buffer = bufnr })

			vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
			vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
			vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
		end)

		require('mason').setup({})
		require('mason-lspconfig').setup({
			ensure_installed = { 'lua_ls', 'vimls', 'bashls', 'clangd', 'sqlls', 'jdtls', 'ts_ls' },
			handlers = { lsp_zero.default_setup }
		})

		-- (Optional) Configure lua language server for neovim
		--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

		--lsp_zero.setup()
	end
}

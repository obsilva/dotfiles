return {
	{
		-- Configuration files for LSP functionality
		'neovim/nvim-lspconfig',
		enabled = true,
	},
	{
		-- Manages LSP servers, DAP, linters, and formatters
		'mason-org/mason.nvim',
		enabled = true,
	},
	{
		-- Connect mason.vim and nvim-lspconfig plugins
		'mason-org/mason-lspconfig.nvim',
		enabled = true,
		dependencies = {
			{ 'mason-org/mason.nvim', opts = {} },
			'neovim/nvim-lspconfig',
		},

		opts = {
			-- Language servers to install and configure
			ensure_installed = {
				'bashls',
				'docker_language_server',
				'html',
				'jdtls',
				'lua_ls',
				'sqlls',
				'vimls',
				'yamlls',
			}
		},
	},
}

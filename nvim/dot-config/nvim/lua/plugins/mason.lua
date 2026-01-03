return {
	{
		-- Manages LSP servers, DAP, linters, and formatters
		"mason-org/mason.nvim",
		cmd = "Mason",
		build = ":MasonUpdate",

		opts = {
			ui = {
				-- Use the following icons instead of the default colored circles
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		-- Bridge mason.vim and nvim-lspconfig plugins
		-- nvim-lspconfig is a collection of configuration files for language servers
		"mason-org/mason-lspconfig.nvim",
		event = "VeryLazy",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},

		opts = {
			-- We could install *LSP* servers here with ensure_installed,
			-- however we are already managing Mason tools via mason-tool-installer
			-- ensure_installed {
			--		"bashls",
			-- }
		},
	},
	{
		-- Helper pluging to automatically install Mason tools
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		event = "VeryLazy",
		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
		},

		opts = {
			ensure_installed = {
				-- LSP
				"bashls",
				"docker_language_server",
				"html",
				"jdtls",
				"lua_ls",
				"sqlls",
				"taplo",
				"vimls",
				"yamlls",
				-- Debug Adapter
				-- Linter
				"shellcheck",
				-- Formatter
				"beautysh",
				"google-java-format",
				"prettier",
				"shfmt",
				"sqlfmt",
				"stylua",
			},
		},
	},
}

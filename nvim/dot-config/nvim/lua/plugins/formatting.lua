return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = "ConformInfo",
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat [F]ile",
		},
	},

	opts = {
		format_on_save = false,
		-- set defaults in case we run it some other way than the keymap
		default_format_opts = { async = true, lsp_format = "fallback" },
		formatters_by_ft = {
			ledger = { "trim_newlines", "trim_whitespace" },
			lua = { "stylua" },
			markdown = { "prettier" },
			sh = { "shfmt" },
			yaml = { "prettier" },
			zsh = { "beautysh" },
		},
	},
}

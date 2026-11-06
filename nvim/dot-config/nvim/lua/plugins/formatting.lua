return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = "ConformInfo",
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = false, timeout_ms = 3000, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat [F]ile",
		},
	},

	opts = {
		format_on_save = false,
		format_after_save = false,
		-- set defaults in case we run it some other way than the keymap
		default_format_opts = { async = false, timeout_ms = 3000, lsp_format = "fallback" },
		formatters_by_ft = {
			["*"] = { "codespell" },
			["_"] = { "trim_whitespace" },
			bash = { "shfmt" },
			css = { "prettier" },
			dockerfile = { "dockerfmt" },
			html = { "prettier" },
			java = { "google-java-format" },
			javascript = { "prettier" },
			json = { "prettier" },
			ledger = { "trim_whitespace" },
			lua = { "stylua" },
			markdown = { "prettier" },
			sh = { "shfmt" },
			sql = { "sqlfmt" },
			toml = { "taplo" },
			typescript = { "prettier" },
			yaml = { "yamlfmt" },
			zsh = { "beautysh" },
		},
	},
}

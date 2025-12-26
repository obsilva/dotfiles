return {
	-- Formatter plugin
	'stevearc/conform.nvim',
	enabled = true,

	config = function()
		require('conform').setup({
			formatters_by_ft = {
				sh = { 'shfmt' },
				lua = { 'stylua' },
				ledger = { 'trim_newlines', 'trim_whitespace' },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = 'fallback',
			},
		})
	end
}

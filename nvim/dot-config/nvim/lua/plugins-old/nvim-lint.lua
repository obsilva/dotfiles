return {
	-- Asynchronous linter plugin
	'mfussenegger/nvim-lint',
	enabled = true,

	config = function()
		opts = {
			events = { 'BufWritePost', 'BufReadPost', 'InsertLeave' },
			linters_by_ft = {
				ledger = { 'hledger' },
			},
			linters = {},
		}
	end
}

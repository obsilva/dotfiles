return {
	-- Asynchronous linter plugin
	"mfussenegger/nvim-lint",

	config = function()
		opts = {
			events = { "BufWritePost", "BufReadPost", "InsertLeave" },
			linters = {},
			linters_by_ft = {
				ledger = { "hledger" },
			},
		}
	end,
}

return {
	-- Asynchronous linter plugin
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "InsertLeave", "BufWritePost" },

	config = function()
		opts = {
			events = { "BufReadPost", "InsertLeave", "BufWritePost" },
			linters = {},
			linters_by_ft = {
				ledger = { "hledger" },
			},
		}
	end,
}

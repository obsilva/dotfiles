return {
	"ledger/vim-ledger",
	-- version = false,
	ft = "ledger",
	keys = {
		{ "<leader>la", vim.cmd.LedgerAlign, "n" },
		{ "<leader>lab", vim.cmd.LedgerAlignBuffer, "n" },
	},

	init = function()
		vim.g.ledger_bin = "ledger" -- Path to ledger executable
		vim.g.ledger_date_format = "%Y-%m-%d" -- ISO format
		vim.g.ledger_default_commodity = "BRL"
		vim.g.ledger_commodity_before = 0 -- Add commodity after the ammount
		vim.g.ledger_commodity_sep = " " -- Ammount and commodity separator
		vim.g.ledger_align_at = 67 -- Decimal separator column alingment
		-- Custom separator to align on the commodity instead of decimal separator
		-- Tried the ledger_align_commodity option but didn't work as I was expecting
		vim.g.ledger_decimal_sep = '"ABCDEFGHIJKLMNOPQRSTUVWXYZ'
		vim.g.ledger_fuzzy_account_completion = 1 -- Enable fuzzy matching completion

		vim.keymap.set("n", "<leader>ls", function()
			vim.fn["ledger#transaction_state_toggle"]('line(".")', "!*")
		end)

		vim.keymap.set("n", "<leader>ld", function()
			vim.fn["ledger#transaction_date_set"]('line(".")', "primary")
		end)
	end,
	opt = {},
}

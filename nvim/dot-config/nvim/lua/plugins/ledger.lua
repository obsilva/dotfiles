return {
	"ledger/vim-ledger",
	-- only load on ledger files
	ft = "ledger",
	-- version = false,

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

		vim.cmd([[
			function LedgerSort() range
				execute a:firstline .. ',' .. a:lastline .. '! ledger -f - -I print'
				execute a:firstline .. ',' .. a:lastline .. 's/^    /  /g'
				execute a:firstline .. ',' .. a:lastline .. 'LedgerAlign'
			endfunction
			command -range LedgerSort :<line1>,<line2>call LedgerSort()
		]])

		vim.keymap.set("n", "<leader>la", function()
			vim.cmd("LedgerAlign")
		end)
		vim.keymap.set("n", "<leader>lab", function()
			vim.cmd("LedgerAlignBuffer")
		end)
		vim.keymap.set("n", "<leader>ld", function()
			vim.fn["ledger#transaction_date_set"]('line(".")', "primary")
		end)
		vim.keymap.set("n", "<leader>ldu", function()
			vim.fn["ledger#transaction_date_set"]('line(".")', "unshift")
		end)
		vim.keymap.set("n", "<leader>ls", function()
			vim.fn["ledger#transaction_state_toggle"]('line(".")', "!*")
		end)
	end,
	opt = {},
}

return {
	-- Adds git related signs to the gutter, as well as providing utilities
	-- such as interactively stage & unstage hunks (parts of a file)
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",

	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
	},
}

return {
	-- Fuzzy finder
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- Pretty icons when using a Nerd Font
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},

	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>gs", builtin.git_files, { desc = "[G]it [S]earch" })
		vim.keymap.set("n", "<leader>fs", builtin.find_files, { desc = "[F]iles [S]earch" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]iles [G]rep" })

		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end,
}

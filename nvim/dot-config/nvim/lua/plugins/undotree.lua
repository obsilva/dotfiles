return {
	"mbbill/undotree",
	cmd = { "UndotreeShow", "UndotreeToggle" },
	keys = {
		{ "<leader>u", vim.cmd.UndotreeToggle, "n" },
		{ "<leader>uo", vim.cmd.UndotreeShow, "n" },
		{ "<leader>uc", vim.cmd.UndotreeHide, "n" },
	},
}

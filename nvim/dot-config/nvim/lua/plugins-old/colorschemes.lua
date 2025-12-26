return {
	-- Keep all colorschemes and its configurations here
	-- Set the main theme with 'lazy = false' and 'priority = 1000'
	{
		'navarasu/onedark.nvim',
		lazy = false,
		priority = 1000,
		opts = {
			-- default style. Options: dark, darker, cool, deep, warm, warmer
			style = 'warmer',
			disable_background = true,
		},
	},
	{
		'folke/tokyonight.nvim',
		lazy = true,
		--priority = 1000,
		opts = {
			-- default style. Options: night, storm, moon, day
			style = "night",
		},
	},
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		lazy = true,
		--priority = 1000,
		opts = {
			-- default style. Options: latte, frappe, macchiato, mocha
			flavour = 'mocha',
		},
	},
	{
		'sainnhe/sonokai',
		lazy = true,
		--priority = 1000,
		opts = {
			sonokai_enable_italic = true,
		},
	},
	{
		'loctvl842/monokai-pro.nvim',
		lazy = true,
		--priority = 1000,
		opts = {
			-- default style. Options: classic, octagon, pro, machine, ristretto, spectrum
			filter = 'spectrum',
		},
	},
}

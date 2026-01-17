return {
	-- Keep all colorschemes and its configurations here
	-- Set lazy = false', 'priority = 1000' in the main theme
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			-- default style. Options: dark, darker, cool, deep, warm, warmer
			style = "warmer",
		},
	},
	{
		-- Similar to onedark.vim above, but has a 'dark' variant with black background
		-- Both themes share the 'onedark' name and therefore cannot be loaded
		-- at the same time
		"olimorris/onedarkpro.nvim",
		lazy = true,
		--priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		--priority = 1000,
		opts = {
			-- default style. Options: night, storm, moon, day
			style = "night",
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		--priority = 1000,
		opts = {
			-- default style. Options: latte, frappe, macchiato, mocha
			flavour = "mocha",
			-- automatically detect installed plugins and enable their integrations
			auto_integrations = true,
		},
	},
	{
		"dgox16/oldworld.nvim",
		lazy = true,
		--priority = 1000,
		opts = {
			styles = {
				booleans = { bold = true },
				functions = { italic = true },
				comments = { italic = true },
			},
		},
	},
	{
		"sainnhe/sonokai",
		lazy = true,
		--priority = 1000,
		opts = {
			sonokai_enable_italic = true,
		},
	},
	{
		"loctvl842/monokai-pro.nvim",
		lazy = true,
		--priority = 1000,
		opts = {
			-- default style. Options: classic, octagon, pro, machine, ristretto, spectrum
			filter = "spectrum",
		},
	},
}

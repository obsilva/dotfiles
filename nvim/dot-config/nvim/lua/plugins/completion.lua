return {
	"saghen/blink.cmp",
	-- release tag to download pre-built binaries
	version = "1.*",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = { "rafamadriz/friendly-snippets" },

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			-- Presets:
			-- 'default' for mappings similar to built-in completions (C-y to accept)
			-- 'super-tab' for mappings similar to vscode (tab to accept)
			-- 'enter' for enter to accept
			-- 'none' for no mappings
			--
			-- All presets have the following mappings:
			-- C-space: Open menu or open docs if already open
			-- C-n/C-p or Up/Down: Select next/previous item
			-- C-e: Hide menu
			-- C-k: Toggle signature help (if signature.enabled = true)
			preset = "enter",
			["<C-y>"] = { "select_and_accept" },
		},

		completion = {
			ghost_text = { enabled = true },
			menu = { draw = { treesitter = { "lsp" } } },
			documentation = { auto_show = true, auto_show_delay_ms = 200 },
		},

		-- Experimental signature help support
		signature = { enabled = true },

		-- Enable all built-in sources - omni is not enabled by default
		-- Can extend elsewhere with `opts_extend`
		sources = { default = { "lsp", "path", "snippets", "buffer", "omni" } },

		-- Completions when in command mode
		cmdline = { keymap = { preset = "inherit" } },
	},

	opts_extend = {
		"sources.completion.enabled_providers",
		"sources.compat",
		"sources.default",
	},
}

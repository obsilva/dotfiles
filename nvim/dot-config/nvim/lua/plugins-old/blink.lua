return {
	'saghen/blink.cmp',
	enabled = true,
	-- release tag to download pre-built binaries
	version = '1.*',
	---@module 'blink.cmp'
	---@type blink.cmp.Config

	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		--
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		--
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = { preset = 'default' },
		appearance = {
			use_nvim_cmp_as_default = true,
		},
		-- (Default) Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = true } },
		-- Enable all built-in sources - omni is not enabled by default
		-- Can extend elsewhere with `opts_extend`
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer', 'omni' },
		},
	},
	opts_extend = { "sources.default" }
}

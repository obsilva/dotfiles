vim.g.have_nerd_font = true -- whether a Nerd Font is enabled. Used in plugin config

vim.opt.cursorline = true -- highlight the current line
vim.opt.relativenumber = true -- line number relative to the line we are on...
vim.opt.number = true -- ...but show the actual number for the line we are on

vim.opt.ignorecase = true -- ignore case when searching...
vim.opt.smartcase = true -- ... unless there is a capital letter in the query

vim.opt.tabstop = 4 -- number of spaces a tab counts for
vim.opt.shiftwidth = 4 -- indentation size for auto-indent, <<, and >> commands
vim.opt.softtabstop = -1 -- use shiftwidth for backspace and tab size in insert mode
vim.opt.expandtab = true -- expand tabs into spaces?
--vim.opt.smartindent = true

vim.opt.termguicolors = true -- explicitly enables 24-bit RGB color
vim.cmd.colorscheme("habamax") -- fallback built-in colorscheme, overwritten via plugins
vim.opt.colorcolumn = "80,100,120" -- vertical rules
vim.opt.showmode = false -- mode already displayed in the status line

vim.opt.winborder = "rounded" -- floating windows border style
require("vim._core.ui2").enable() -- enables v0.12+ redesigned elements

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.timeoutlen = 750 -- time to wait for a mapped key sequence to complete

vim.opt.list = true -- display the following whitespace characters
vim.opt.listchars = { tab = "» ", nbsp = "␣", trail = "·", multispace = "·" }

vim.opt.scrolloff = 8 -- lines of context to keep around the cursor
vim.opt.sidescrolloff = 8 -- columns of context
vim.opt.signcolumn = "yes" -- always display the signcolumn
vim.opt.isfname:append("@-@") -- include '@' character in file names

vim.opt.spell = true
vim.opt.spelllang = "en_us,pt_br"

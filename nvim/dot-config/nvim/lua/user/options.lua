vim.opt.cursorline = true     -- highlight the current line
vim.opt.relativenumber = true -- line number relative to the line we are on...
vim.opt.number = true         -- ...but show the actual number for the line we are on

vim.opt.ignorecase = true     -- ignore case when searching...
vim.opt.smartcase = true      -- ... unless there is a capital letter in the query

vim.opt.tabstop = 3           -- number of spaces tabs count for
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3        -- size of an indent
--vim.opt.expandtab = true
--vim.opt.smartindent = true

vim.opt.termguicolors = true
vim.cmd.colorscheme('habamax')     -- fallback built-in colorscheme, overwritten via plugins
vim.opt.colorcolumn = '80,100,120' -- vertical rules

vim.opt.updatetime = 250           -- make updates happen faster

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv('VIMCONFIG') .. '/undodir'

vim.opt.scrolloff = 8     -- lines of context to keep around the cursor
vim.opt.sidescrolloff = 8 -- columns of context
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

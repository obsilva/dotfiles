vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Explore, { desc = "Open netrw directory explorer" })

-- Move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Remove line break, i.e. bring the line below to the current line" })

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Keep cursor at the center of window
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor centralized during half-page down moviment" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor centralized during half-page up moviment" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep cursor centralized during forward search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep cursor centralized during backward search" })

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy selection to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy line to clipboard" })

-- Delete selection without saving to register
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d", { desc = "Delete selection without saving to register" })

-- CTRL + c works as ESC
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "'CTRL + c' works as 'ESC'"})

-- Diagnostics
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Go to next error" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Go to previous error" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace all occurences of word under cursor
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })

-- Reload configuration
vim.keymap.set("n", "<leader><leader>", "<cmd>so<CR>", { desc = "(Re)source configuration" })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

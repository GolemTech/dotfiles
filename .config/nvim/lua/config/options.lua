-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--
vim.g.autoformat = false -- enable/disable autoformat
vim.o.backup = false -- creates a backup file
vim.o.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.o.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.o.conceallevel = 0 -- so that `` is visible in markdown files
vim.o.fileencoding = "utf-8" -- the encoding written to a file
vim.o.hlsearch = true -- highlight all matches on previous search pattern
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.mouse = "a" -- allow the mouse to be used in neovim
vim.o.pumheight = 10 -- pop up menu height
vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.o.smartcase = true -- smart case
vim.o.smartindent = true -- make indenting smarter again
vim.o.splitbelow = true -- force all horizontal splits to go below current window
vim.o.splitright = true -- force all vertical splits to go to the right of current window
vim.o.swapfile = false -- creates a swapfile
vim.o.timeoutlen = 150 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.o.undofile = true -- enable persistent undo
vim.o.updatetime = 300 -- faster completion (4000ms default)
vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.o.expandtab = true -- convert tabs to spaces
vim.o.cursorline = true -- highlight the current line
vim.o.number = true -- set numbered lines
vim.o.relativenumber = true -- set relative numbered lines
vim.o.numberwidth = 1 -- set number column width to 2 {default 4}
vim.opt.statuscolumn = "%=%{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . '' : v:lnum) : ''}%=%s"
vim.o.signcolumn = "yes"
vim.api.nvim_set_hl(0, "SignColumn", { clear }) -- sign column without background
vim.o.wrap = false -- display lines as one long line
vim.o.scrolloff = 8 -- is one of my fav
vim.o.sidescrolloff = 8
vim.o.termguicolors = true


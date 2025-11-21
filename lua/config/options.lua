-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim specific options
vim.g.lazyvim_blink_main = true
vim.g.lazyvim_picker = "telescope"

-- Enabled 256 colors support
vim.opt.termguicolors = true

-- Shell
vim.opt.shell = "pwsh.exe"

-- Tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Highlight Search
vim.opt.hlsearch = true

-- Swap and backup
vim.opt.swapfile = false

-- Disable mouse
vim.opt.mouse = ""

-- Ignore paths
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/*" })

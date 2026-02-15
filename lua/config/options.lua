-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim specific options
-- vim.g.lazyvim_blink_main = true
vim.g.lazyvim_picker = "telescope"
vim.g.snacks_animate = true

-- Enable title
vim.opt.title = true

-- Enable 256 colors support
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

-- Neovide
vim.opt.guifont = "IosevkaTerm Nerd Font Mono:h16"
vim.g.neovide_position_animation_length = 0
vim.g.neovide_cursor_animation_length = 0.00
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_in_insert_mode = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_far_lines = 0
vim.g.neovide_scroll_animation_length = 0.00

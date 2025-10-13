vim.g.mapleader = " "
vim.g.localleader = " "

vim.o.guifont = "Lilex Nerd Font Mono: h12"

vim.opt.fillchars = "fold: ,vert:¦,eob: ,msgsep:?"

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

-- vim.opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a - KansoVim'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "pwsh"
vim.opt.backupskip = { "/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""

vim.opt.formatoptions:append({ "r" })

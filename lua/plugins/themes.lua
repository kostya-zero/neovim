-- Change this to kanagawa, kanso, lackluster or zenbones
-- to choose colorscheme
local colorscheme = "kanso"

return {
	{
		"webhooked/kanso.nvim",
		lazy = false,
		enabled = colorscheme == "kanso",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme kanso-zen")
		end,
	},
	{
		"slugbyte/lackluster.nvim",
		lazy = false,
		enabled = colorscheme == "lackluster",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme lackluster")
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		lazy = false,
		enabled = colorscheme == "zenbones",
		priority = 1000,
		dependencies = "rktjmp/lush.nvim",
		config = function()
			vim.cmd("colorscheme zenwritten")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		enabled = colorscheme == "kanagawa",
		priority = 1000,
		config = function()
			require("kanagawa").setup({})
			vim.cmd("colorscheme kanagawa-dragon")
		end,
	},
	{
		"WTFox/jellybeans.nvim",
		lazy = false,
		enabled = colorscheme == "jellybeans",
		priority = 1000,
		config = function()
			require("jellybeans").setup({ transparent = true })
			vim.cmd("colorscheme jellybeans-mono")
		end,
	},
}

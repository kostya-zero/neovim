return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"printf",
			"vim",
			"vimdoc",
			"typescript",
			"javascript",
			"tsx",
			"json",
			"yaml",
			"toml",
			"c",
			"cpp",
			"cmake",
			"go",
			"gomod",
			"gosum",
			"gitcommit",
			"gitignore",
			"rust",
			"ron",
			"css",
			"scss",
			"html",
			"sql",
		},
		highlight = {
			enable = true,
			use_languagetree = true,
		},
		indent = { enable = true },
	},
	config = function(_, opts)
		local ts = require("nvim-treesitter")
		ts.setup()
		ts.install({

			"lua",
			"luadoc",
			"printf",
			"vim",
			"vimdoc",
			"typescript",
			"javascript",
			"tsx",
			"json",
			"yaml",
			"toml",
			"c",
			"cpp",
			"cmake",
			"go",
			"gomod",
			"gosum",
			"gitcommit",
			"gitignore",
			"rust",
			"ron",
			"css",
			"scss",
			"html",
			"sql",
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "<filetype>" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}

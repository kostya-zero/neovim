return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
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
		},
		highlight = {
			enable = true,
			use_languagetree = true,
		},
		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}

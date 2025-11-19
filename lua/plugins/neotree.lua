return {
	"nvim-neo-tree/neo-tree.nvim",
	lazy = false,
	event = "VeryLazy",
	---@module "neo-tree"
	---@type neotree.Config
	opts = {
		filesystem = {
			window = {
				mappings = {
					["l"] = "open",
				},
			},
		},
	},
	keys = {
		{
			"<leader>e",
			"<cmd>Neotree<cr>",
			desc = "Open Explorer",
		},
	},
}

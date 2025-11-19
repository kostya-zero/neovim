return {
	"akinsho/bufferline.nvim",
	version = "*",
	lazy = false,
	event = "VeryLazy",
	---@module "bufferline"
	---@type bufferline.Config
	opts = {
		options = {
			show_close_icon = false,
			separator_style = "underline",
		},
	},
}

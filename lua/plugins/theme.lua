return {
	"WTFox/jellybeans.nvim",
	lazy = false,
	priority = 1000,
	---@module "jellybeans"
	---@type jellybeans.Config
	opts = {
		transparent = false,
		flat_ui = true,
		background = {
			dark = "jellybeans_mono",
			light = "jellybeans_mono_light",
		},
		plugins = {
			all = true,
			auto = false,
		},
		on_highlights = function(hl, c)
			hl.FloatTitle = { bg = c.perano, fg = c.mine_shaft }
		end,
	},
}

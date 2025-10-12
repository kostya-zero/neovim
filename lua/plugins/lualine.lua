local function get_mode()
	return {
		"mode",
		padding = 0,
		fmt = function()
			return " "
		end,
	}
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	event = "VeryLazy",
	opts = {
		options = {
			globalstatus = true,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
		},
		extentions = {
			"oil",
			"mason",
			"lazy",
			"trouble",
		},
		sections = {
			lualine_a = {
				get_mode(),
			},
			lualine_b = {
				{ "branch", icon = "", color = { gui = "bold" }, padding = { left = 1, right = 1 } },
				{ "diff", symbols = { added = "+", modified = "~", removed = "-" } },
				{ "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
			},
			lualine_c = {},
			lualine_x = {
				{
					"location",
					padding = {
						left = 1,
						right = 1,
					},
				},
			},
			lualine_y = {
				{ "filetype" },
			},
			lualine_z = { get_mode() },
		},
	},
}

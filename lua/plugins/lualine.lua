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
		sections = {
			lualine_a = {
				get_mode(),
			},
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "filetype" },
			lualine_y = { "location" },
			lualine_z = { get_mode() },
		},
	},
}

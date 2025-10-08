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
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{ "filetype", icon_only = true, padding = { left = 1, right = 0 } },
				{ "filename", padding = 0 },
			},
			lualine_x = {
				{
					function()
						return require("noice").api.status.command.get()
					end,
					cond = function()
						return package.loaded["noice"] and require("noice").api.status.command.has()
					end,
					color = function()
						return { fg = Snacks.util.color("Statement") }
					end,
				},
				-- {
				-- 	function()
				-- 		return require("noice").api.status.mode.get()
				-- 	end,
				-- 	cond = function()
				-- 		return package.loaded["noice"] and require("noice").api.status.mode.has()
				-- 	end,
				-- 	color = function()
				-- 		return { fg = Snacks.util.color("Constant") }
				-- 	end,
				-- },
			},
			lualine_y = {
				{
					"location",
					padding = {
						left = 1,
						right = 1,
					},
				},
			},
			lualine_z = { get_mode() },
		},
	},
}

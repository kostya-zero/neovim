local function current_dir()
	local cwd = vim.fn.getcwd()
	return vim.fn.fnamemodify(cwd, ":t")
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	event = "VeryLazy",
	opts = function()
		local config = {
			options = {
				theme = "auto",
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return " " .. str
						end,
					},
				},
				lualine_b = {
					{
						"branch",
						icon = "",
					},
				},
				lualine_c = {
					{
						"diagnostics",
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
				},
				lualine_x = {
					Snacks.profiler.status(),
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
					{
						function()
							return require("noice").api.status.mode.get()
						end,
						cond = function()
							return package.loaded["noice"] and require("noice").api.status.mode.has()
						end,
						color = function()
							return { fg = Snacks.util.color("Constant") }
						end,
					},
					{
						function()
							return "  " .. require("dap").status()
						end,
						cond = function()
							return package.loaded["dap"] and require("dap").status() ~= ""
						end,
						color = function()
							return { fg = Snacks.util.color("Debug") }
						end,
					},
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
						color = function()
							return { fg = Snacks.util.color("Special") }
						end,
					},
					{
						"diff",
						symbols = { added = " ", modified = "󰏫 ", removed = " " },
					},
				},
				lualine_y = {
					{ "progress", separator = " ", padding = { left = 1, right = 0 } },
					{ "location", padding = { left = 0, right = 1 } },
				},
				lualine_z = {
					{ current_dir, icon = "", color = { gui = "bold" } },
				},
			},
		}
		return config
	end,
}

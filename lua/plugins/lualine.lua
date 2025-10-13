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
				theme = "kanso",
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
					-- get_mode(),
				},
				lualine_b = {
					{
						"mode",
						color = { gui = "bold" },
						fmt = function(str)
							return " " .. str
						end,
					},
				},
				lualine_c = {
					{
						"branch",
						icon = "",
						color = { gui = "bold", fg = "#777983" },
						padding = { left = 1, right = 1 },
					},
					{
						"diagnostics",
						colored = false,
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
						color = { fg = "#777983" },
					},
				},
				lualine_x = {
					{
						"location",
						color = { fg = "#777983" },
						padding = {
							left = 1,
							right = 1,
						},
					},
				},
				lualine_y = {
					{
						"diff",
						colored = false,
						symbols = { added = " ", modified = "󰏫 ", removed = " " },
						color = { fg = "#777983" },
					},
					{ current_dir, icon = "", color = { gui = "bold" } },
				},
				lualine_z = {
					-- get_mode()
				},
			},
		}
		return config
	end,
}

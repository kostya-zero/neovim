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
						padding = { left = 1, right = 1 },
					},
				},
				lualine_c = {
					{
						"diagnostics",
						colored = false,
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
					},
				},
				lualine_x = {
					{
						"diff",
						colored = false,
						symbols = { added = " ", modified = "󰏫 ", removed = " " },
					},
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
				lualine_z = {
					{ current_dir, icon = "", color = { gui = "bold" } },
				},
			},
		}
		return config
	end,
}

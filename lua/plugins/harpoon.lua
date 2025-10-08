return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	opts = {
		menu = {
			width = vim.api.nvim_win_get_width(0) - 4,
		},
		settings = {
			save_on_toggle = true,
		},
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = function()
		local keys = {
			{
				"<leader>h",
				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Open Harpoon Menu",
			},
			{
				"<leader>a",
				function()
					require("harpoon"):list():add()
					vim.notify("Added to harpoon", vim.log.levels.INFO)
				end,
				desc = "Harpoon File",
			},
		}

		for i = 1, 9 do
			table.insert(keys, {
				"<leader>" .. i,
				function()
					require("harpoon"):list():select(i)
				end,
				desc = "Harpoon to File " .. i,
			})
		end
		return keys
	end,
}

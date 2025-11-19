return {
	"stevearc/oil.nvim",
	event = "VeryLazy",
	enabled = false,
	lazy = false,
	keys = {
		{
			"-",
			"<cmd>Oil<cr>",
			desc = "Open Oil",
			mode = { "n" },
		},
	},
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		skip_confirm_for_simple_edits = true,
		delete_to_trash = true,
		columns = {
			"icon",
			-- "size",
			-- "mtime",
		},
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["g?"] = { "actions.show_help", mode = "n" },
			["<CR>"] = "actions.select",
			["<C-s>"] = { "actions.select", opts = { vertical = true } },
			["<C-h>"] = { "actions.select", opts = { horizontal = true } },
			["<C-t>"] = { "actions.select", opts = { tab = true } },
			["<C-p>"] = "actions.preview",
			["<C-c>"] = { "actions.close", mode = "n" },
			["<C-l>"] = "actions.refresh",
			["-"] = { "actions.parent", mode = "n" },
			["_"] = { "actions.open_cwd", mode = "n" },
			["`"] = { "actions.cd", mode = "n" },
			["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
			["gs"] = { "actions.change_sort", mode = "n" },
			["gx"] = "actions.open_external",
			["g."] = { "actions.toggle_hidden", mode = "n" },
			["g\\"] = { "actions.toggle_trash", mode = "n" },
			["q"] = { "actions.close", mode = "n" },
		},
		float = {
			padding = 6,
			max_width = 0.7,
		},
	},
}

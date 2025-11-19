return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	event = "VeryLazy",
	---@module "snacks"
	---@type Snacks.Config
	opts = {
		bigfile = { enabled = true },
		dashboard = {
			enabled = false,
		},
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = false },
		notifier = { enabled = true, style = "minimal" },
		quickfile = { enabled = true },
		statuscolumn = { enabled = true },
	},
	keys = {
		-- {
		-- 	"<leader>e",
		-- 	function()
		-- 		Snacks.explorer.open()
		-- 	end,
		-- 	desc = "Open Explorer",
		-- },
		{
			"<leader>n",
			function()
				if Snacks.config.picker and Snacks.config.picker.enabled then
					Snacks.picker.notifications()
				else
					Snacks.notifier.show_history()
				end
			end,
			desc = "Notification History",
		},
		{
			"<leader>un",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Dismiss All Notifications",
		},
		{
			"<leader>t",
			function()
				Snacks.terminal()
			end,
			desc = "Open Terminal",
		},
		-- 	{
		-- 		"<leader>,",
		-- 		function()
		-- 			Snacks.picker.pick({ source = "buffers", layout = { preset = "dropdown", layout = { backdrop = 60 } } })
		-- 		end,
		-- 		desc = "Buffers",
		-- 	},
		-- 	{
		-- 		"<leader>:",
		-- 		function()
		-- 			Snacks.picker.command_history()
		-- 		end,
		-- 		desc = "Command History",
		-- 	},
		-- 	{
		-- 		"<leader><space>",
		-- 		function()
		-- 			Snacks.picker.files({
		-- 				finder = "files",
		-- 				format = "file",
		-- 				show_empty = true,
		-- 				supports_live = true,
		-- 			})
		-- 			-- I'll left this here for a while cause idk where to place it.
		-- 			-- Snacks.picker.pick({
		-- 			-- 	source = "files",
		-- 			-- 	layout = {
		-- 			-- 		preset = "dropdown",
		-- 			-- 		layout = {
		-- 			-- 			backdrop = 60,
		-- 			-- 			border = "none",
		-- 			-- 		},
		-- 			-- 		preview = false,
		-- 			-- 	},
		-- 			-- })
		-- 		end,
		-- 		desc = "Find Files (Smart)",
		-- 	},
		-- 	{
		-- 		"<leader>n",
		-- 		function()
		-- 			Snacks.picker.notifications()
		-- 		end,
		-- 		desc = "Notification History",
		-- 	},
		-- 	-- find
		-- 	{
		-- 		"<leader>fb",
		-- 		function()
		-- 			Snacks.picker.buffers()
		-- 		end,
		-- 		desc = "Buffers",
		-- 	},
		-- 	{
		-- 		"<leader>fB",
		-- 		function()
		-- 			Snacks.picker.buffers({ hidden = true, nofile = true })
		-- 		end,
		-- 		desc = "Buffers (all)",
		-- 	},
		-- 	{
		-- 		"<leader>fg",
		-- 		function()
		-- 			Snacks.picker.git_files()
		-- 		end,
		-- 		desc = "Find Files (git-files)",
		-- 	},
		-- 	{
		-- 		"<leader>fR",
		-- 		function()
		-- 			Snacks.picker.recent({ filter = { cwd = true } })
		-- 		end,
		-- 		desc = "Recent (cwd)",
		-- 	},
		-- 	{
		-- 		"<leader>fp",
		-- 		function()
		-- 			Snacks.picker.projects()
		-- 		end,
		-- 		desc = "Projects",
		-- 	},
		-- 	-- git
		-- 	{
		-- 		"<leader>gd",
		-- 		function()
		-- 			Snacks.picker.git_diff()
		-- 		end,
		-- 		desc = "Git Diff (hunks)",
		-- 	},
		-- 	{
		-- 		"<leader>gD",
		-- 		function()
		-- 			Snacks.picker.git_diff({ base = "origin", group = true })
		-- 		end,
		-- 		desc = "Git Diff (origin)",
		-- 	},
		-- 	{
		-- 		"<leader>gs",
		-- 		function()
		-- 			Snacks.picker.git_status()
		-- 		end,
		-- 		desc = "Git Status",
		-- 	},
		-- 	{
		-- 		"<leader>gS",
		-- 		function()
		-- 			Snacks.picker.git_stash()
		-- 		end,
		-- 		desc = "Git Stash",
		-- 	},
		-- 	{
		-- 		"<leader>gi",
		-- 		function()
		-- 			Snacks.picker.gh_issue()
		-- 		end,
		-- 		desc = "GitHub Issues (open)",
		-- 	},
		-- 	{
		-- 		"<leader>gI",
		-- 		function()
		-- 			Snacks.picker.gh_issue({ state = "all" })
		-- 		end,
		-- 		desc = "GitHub Issues (all)",
		-- 	},
		-- 	{
		-- 		"<leader>gp",
		-- 		function()
		-- 			Snacks.picker.gh_pr()
		-- 		end,
		-- 		desc = "GitHub Pull Requests (open)",
		-- 	},
		-- 	{
		-- 		"<leader>gP",
		-- 		function()
		-- 			Snacks.picker.gh_pr({ state = "all" })
		-- 		end,
		-- 		desc = "GitHub Pull Requests (all)",
		-- 	},
		-- 	-- Grep
		-- 	{
		-- 		"<leader>sb",
		-- 		function()
		-- 			Snacks.picker.lines()
		-- 		end,
		-- 		desc = "Buffer Lines",
		-- 	},
		-- 	{
		-- 		"<leader>sB",
		-- 		function()
		-- 			Snacks.picker.grep_buffers()
		-- 		end,
		-- 		desc = "Grep Open Buffers",
		-- 	},
		-- 	{
		-- 		"<leader>sp",
		-- 		function()
		-- 			Snacks.picker.lazy()
		-- 		end,
		-- 		desc = "Search for Plugin Spec",
		-- 	},
		-- 	-- search
		-- 	{
		-- 		'<leader>s"',
		-- 		function()
		-- 			Snacks.picker.registers()
		-- 		end,
		-- 		desc = "Registers",
		-- 	},
		-- 	{
		-- 		"<leader>s/",
		-- 		function()
		-- 			Snacks.picker.search_history()
		-- 		end,
		-- 		desc = "Search History",
		-- 	},
		-- 	{
		-- 		"<leader>sa",
		-- 		function()
		-- 			Snacks.picker.autocmds()
		-- 		end,
		-- 		desc = "Autocmds",
		-- 	},
		-- 	{
		-- 		"<leader>sc",
		-- 		function()
		-- 			Snacks.picker.command_history()
		-- 		end,
		-- 		desc = "Command History",
		-- 	},
		-- 	{
		-- 		"<leader>sC",
		-- 		function()
		-- 			Snacks.picker.commands()
		-- 		end,
		-- 		desc = "Commands",
		-- 	},
		-- 	{
		-- 		"<leader>sd",
		-- 		function()
		-- 			Snacks.picker.diagnostics()
		-- 		end,
		-- 		desc = "Diagnostics",
		-- 	},
		-- 	{
		-- 		"<leader>sD",
		-- 		function()
		-- 			Snacks.picker.diagnostics_buffer()
		-- 		end,
		-- 		desc = "Buffer Diagnostics",
		-- 	},
		-- 	{
		-- 		"<leader>sh",
		-- 		function()
		-- 			Snacks.picker.help()
		-- 		end,
		-- 		desc = "Help Pages",
		-- 	},
		-- 	{
		-- 		"<leader>sH",
		-- 		function()
		-- 			Snacks.picker.highlights()
		-- 		end,
		-- 		desc = "Highlights",
		-- 	},
		-- 	{
		-- 		"<leader>si",
		-- 		function()
		-- 			Snacks.picker.icons()
		-- 		end,
		-- 		desc = "Icons",
		-- 	},
		-- 	{
		-- 		"<leader>sj",
		-- 		function()
		-- 			Snacks.picker.jumps()
		-- 		end,
		-- 		desc = "Jumps",
		-- 	},
		-- 	{
		-- 		"<leader>sk",
		-- 		function()
		-- 			Snacks.picker.keymaps()
		-- 		end,
		-- 		desc = "Keymaps",
		-- 	},
		-- 	{
		-- 		"<leader>sl",
		-- 		function()
		-- 			Snacks.picker.loclist()
		-- 		end,
		-- 		desc = "Location List",
		-- 	},
		-- 	{
		-- 		"<leader>sM",
		-- 		function()
		-- 			Snacks.picker.man()
		-- 		end,
		-- 		desc = "Man Pages",
		-- 	},
		-- 	{
		-- 		"<leader>sm",
		-- 		function()
		-- 			Snacks.picker.marks()
		-- 		end,
		-- 		desc = "Marks",
		-- 	},
		-- 	{
		-- 		"<leader>sR",
		-- 		function()
		-- 			Snacks.picker.resume()
		-- 		end,
		-- 		desc = "Resume",
		-- 	},
		-- 	{
		-- 		"<leader>sq",
		-- 		function()
		-- 			Snacks.picker.qflist()
		-- 		end,
		-- 		desc = "Quickfix List",
		-- 	},
		-- 	{
		-- 		"<leader>su",
		-- 		function()
		-- 			Snacks.picker.undo()
		-- 		end,
		-- 		desc = "Undotree",
		-- 	},
		-- 	-- ui
		-- 	{
		-- 		"<leader>uC",
		-- 		function()
		-- 			Snacks.picker.colorschemes()
		-- 		end,
		-- 		desc = "Colorschemes",
		-- 	},
	},
}

return {
	"nvim-telescope/telescope.nvim",
	keys = {
		{
			"<leader><space>",
			"<cmd>Telescope find_files<cr>",
			desc = "Find Files",
		},
		{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
		{
			"<leader>,",
			"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
			desc = "Switch Buffer",
		},
		-- git
		{ "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
		{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
		-- search
		{ '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
		{ "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
		{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
		{ "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
		{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
		{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
		{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
		{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
		{ "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
		{ "<leader>sj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
		{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
		{ "<leader>sl", "<cmd>Telescope loclist<cr>", desc = "Location List" },
		{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
		{ "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
		{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
		{ "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
		{ "<leader>sq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix List" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		-- This is a workaround for Windows only to make possible to work in
		-- projects like Next.js and Svelte. Found in grug-far PR.
		local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1
		local vimfnameescape = vim.fn.fnameescape
		local winfnameescape = function(path)
			local escaped_path = vimfnameescape(path)
			if is_windows then
				local need_extra_esc = path:find("[%[%]`%$~]")
				local esc = need_extra_esc and "\\\\" or "\\"
				escaped_path = escaped_path:gsub("\\[%(%)%^&;]", esc .. "%1")
				if need_extra_esc then
					escaped_path = escaped_path:gsub("\\\\['` ]", "\\%1")
				end
			end
			return escaped_path
		end

		local select_default = function(prompt_bufnr)
			vim.fn.fnameescape = winfnameescape
			local result = actions.select_default(prompt_bufnr, "default")
			vim.fn.fnameescape = vimfnameescape
			return result
		end

		telescope.setup({
			pickers = {
				find_files = {
					previewer = false,
					theme = "dropdown",
					layout_config = {
						center = { width = 0.65, height = 0.7 },
					},
				},
			},
			defaults = {
				mappings = {
					i = {
						["<cr>"] = select_default,
					},
					n = {
						["<cr>"] = select_default,
					},
				},
			},
		})
	end,
}

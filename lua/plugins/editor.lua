return {
    {
        "vyfor/cord.nvim",
        lazy = false,
        event = "VeryLazy",
        build = ":Cord update",
        opts = {
            idle = {
                enabled = false,
            },
            editor = {
                client = "lazyvim",
            },
        },
    },
    { "wakatime/vim-wakatime", lazy = false },
    {
        "snacks.nvim",
        keys = {
            { "<leader>e", false },
        },
        opts = function(_, opts)
            opts.dashboard = {
                enabled = true,
                preset = {
                    header = "",
                },
                sections = {
                    { section = "header" },
                    { width = 10, section = "keys", indent = 0, padding = 1 },
                    -- { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                    { section = "startup" },
                },
            }
            opts.explorer.enabled = false
            return opts
        end,
    },
    {
        "telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope-file-browser.nvim",
        },
        keys = {
            {
                "<leader>fP",
                function()
                    require("telescope.builtin").find_files({
                        cwd = require("lazy.core.config").options.root,
                    })
                end,
                desc = "Find Plugin File",
            },
            {
                ";f",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.find_files({
                        no_ignore = false,
                        hidden = true,
                    })
                end,
                desc = "Lists files in your current working directory, respects .gitignore",
            },
            {
                ";r",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.live_grep({
                        additional_args = { "--hidden" },
                    })
                end,
                desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
            },
            {
                "\\\\",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.buffers()
                end,
                desc = "Lists open buffers",
            },
            {
                ";t",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.help_tags()
                end,
                desc = "Lists available help tags and opens a new window with the relevant help info on <cr>",
            },
            {
                ";;",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.resume()
                end,
                desc = "Resume the previous telescope picker",
            },
            {
                ";e",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.diagnostics()
                end,
                desc = "Lists Diagnostics for all open buffers or a specific buffer",
            },
            {
                ";s",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.treesitter()
                end,
                desc = "Lists Function names, variables, from Treesitter",
            },
            {
                ";c",
                function()
                    local builtin = require("telescope.builtin")
                    builtin.lsp_incoming_calls()
                end,
                desc = "Lists LSP incoming calls for word under the cursor",
            },
            {
                "<leader>e",
                function()
                    local telescope = require("telescope")

                    local function telescope_buffer_dir()
                        return vim.fn.expand("%:p:h")
                    end

                    telescope.extensions.file_browser.file_browser({
                        path = "%:p:h",
                        cwd = telescope_buffer_dir(),
                        respect_gitignore = false,
                        hidden = true,
                        grouped = true,
                        previewer = false,
                        initial_mode = "normal",
                        layout_config = { height = 40 },
                    })
                end,
                desc = "Open File Browser with the path of the current buffer",
            },
        },
        config = function(_, opts)
            local telescope = require("telescope")
            local actions = require("telescope.actions")
            local fb_actions = require("telescope").extensions.file_browser.actions

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

            opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
                wrap_results = true,
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
                mappings = {
                    i = {
                        ["<cr>"] = select_default,
                    },
                    n = {
                        ["<cr>"] = select_default,
                    },
                },
            })
            opts.pickers = {
                diagnostics = {
                    theme = "ivy",
                    initial_mode = "normal",
                    layout_config = {
                        preview_cutoff = 9999,
                    },
                },
            }
            opts.extensions = {
                file_browser = {
                    theme = "dropdown",
                    initial_mode = "normal",
                    hijack_netrw = true,
                    layout_config = {
                        center = { width = 0.55, height = 0.8 },
                    },
                    mappings = {
                        ["n"] = {
                            ["N"] = fb_actions.create,
                            ["h"] = fb_actions.goto_parent_dir,
                            ["/"] = function()
                                vim.cmd("startinsert")
                            end,
                            ["<C-u>"] = function(prompt_bufnr)
                                for i = 1, 10 do
                                    actions.move_selection_previous(prompt_bufnr)
                                end
                            end,
                            ["<C-d>"] = function(prompt_bufnr)
                                for i = 1, 10 do
                                    actions.move_selection_next(prompt_bufnr)
                                end
                            end,
                            ["<PageUp>"] = actions.preview_scrolling_up,
                            ["<PageDown>"] = actions.preview_scrolling_down,
                        },
                    },
                },
            }

            telescope.setup(opts)
            telescope.load_extension("file_browser")
        end,
    },
}

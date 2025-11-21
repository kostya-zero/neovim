return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        ---@module "noice"
        ---@type NoiceConfig
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                },
            },
            cmdline = {
                view = "cmdline",
            },
            presets = {
                bottom_search = true, -- use a classic bottom cmdline for search
                command_palette = true, -- position the cmdline and popupmenu together
                long_message_to_split = true, -- long messages will be sent to a split
                inc_rename = false, -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false, -- add a border to hover docs and signature help
            },
        },
    },
    -- {
    --     "bufferline.nvim",
    --     event = "VeryLazy",
    --     opts = {
    --         options = {
    --             -- separator_style = "slant",
    --             show_buffer_close_icons = false,
    --             show_close_icon = false,
    --         },
    --     },
    -- },
    {
        "b0o/incline.nvim",
        event = "BufReadPost",
        opts = {
            window = {
                padding = 0,
                margin = {
                    horizontal = 0,
                },
            },
            render = function(props)
                local helpers = require("incline.helpers")
                local devicons = require("nvim-web-devicons")
                local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                if filename == "" then
                    filename = "[No Name]"
                end
                local ft_icon, ft_color = devicons.get_icon_color(filename)
                local modified = vim.bo[props.buf].modified
                return {
                    ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
                    " ",
                    { filename, gui = modified and "bold,italic" or "bold" },
                    " ",
                }
            end,
        },
    },
}

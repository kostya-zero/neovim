return {
    "saghen/blink.cmp",
    event = "InsertEnter",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    opts = {
        keymap = {
            preset = "enter",
            ["<C-y>"] = { "select_and_accept" },
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = {
            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },
            menu = {
                draw = {
                    treesitter = { "lsp" },
                },
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
            },
            ghost_text = {
                enabled = vim.g.ai_cmp,
            },
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = {
            enabled = true,
            window = {
                winblend = vim.o.pumblend,
            },
        },

    },
    opts_extend = { "sources.default" },
}

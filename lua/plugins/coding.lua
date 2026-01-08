return {
    {
        "friendly-snippets",
        enabled = false,
    },
    {
        "saghen/blink.cmp",
        opts = function(_, opts)
            -- For some reason, snippets causes input lags. This lags were really annoying,
            -- and I've figured out it was because of snippets. I want to belive that
            -- it happens because friendly-snippets has a lot of snippets. Otherwise,
            -- I don't actually use them so it is not bad for me.
            opts.sources.default = { "lsp", "path", "buffer" }
            return opts
        end,
    },
    {
        "monaqa/dial.nvim",
        keys = {
            {
                "<C-a>",
                function()
                    return require("dial.map").inc_normal()
                end,
                expr = true,
                desc = "Increment",
            },
            {
                "<C-x>",
                function()
                    return require("dial.map").dec_normal()
                end,
                expr = true,
                desc = "Decrement",
            },
        },
        config = function()
            local augend = require("dial.augend")
            require("dial.config").augends:register_group({
                default = {
                    augend.integer.alias.decimal,
                    augend.integer.alias.hex,
                    augend.date.alias["%Y/%m/%d"],
                    augend.constant.alias.bool,
                    augend.semver.alias.semver,
                    augend.constant.new({ elements = { "let", "const" } }),
                },
            })
        end,
    },
}

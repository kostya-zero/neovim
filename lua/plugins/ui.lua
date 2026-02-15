return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        ---@module "noice"
        ---@type NoiceConfig
        opts = function(_, opts)
            table.insert(opts.routes, {
                filter = {
                    event = "notify",
                    find = "No information available.",
                },
                opts = { skip = true },
            })

            opts.presets.lsp_doc_border = true
            return opts
        end,
    },
}

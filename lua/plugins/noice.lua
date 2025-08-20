return {
    "noice.nvim",
    opts = function(_, opts)
        opts.cmdline = {
            view = "cmdline",
        }

        opts.presets.lsp_doc_border = true

        return opts
    end,
}

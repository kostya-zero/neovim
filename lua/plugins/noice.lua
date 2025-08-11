return {
    "noice.nvim",
    opts = function(_, opts)
        opts.cmdline = {
            view = "cmdline_popup",
        }

        return opts
    end,
}

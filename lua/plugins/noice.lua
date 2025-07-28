return {
    "noice.nvim",
    opts = function(_, opts)
        opts.cmdline = {
            view = "cmdline",
        }

        return opts
    end,
}

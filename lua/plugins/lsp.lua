return {
    {
        "mason.nvim",
        opts = function(_, opts)
            return opts
        end,
        enabled = true,
    },
    {
        "mason-lspconfig.nvim",
        enabled = true,
    },
    {
        "nvim-lint",
        enabled = false,
    },
}

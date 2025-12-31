return {
    "mason.nvim",
    opts = function(_, opts)
        opts.ensure_installed = {
            "stylua",
            "shfmt",
            "clangd",
            "codelldb",
            "eslint-lsp",
            "prettier",
            "tailwindcss-language-server",
            "taplo",
            "vtsls",
        }
        return opts
    end,
    enabled = true,
}

return {
    "neovim/nvim-lspconfig",
    -- enabled = false,
    dependencies = { "mason.nvim" },
    event = { "BufReadPre", "BufNewFile", "BufWritePre" },
}

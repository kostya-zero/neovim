return {
    {
        "tokyonight.nvim",
        enabled = false,
    },
    {
        "wtfox/jellybeans.nvim",
        lazy = false,
        priority = 1000,
        opts = {}, -- Optional
        config = function()
            vim.cmd("colorscheme jellybeans-mono")
        end,
    },
}

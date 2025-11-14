return {
    {
        "webhooked/kanso.nvim",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme kanso-zen")
        end,
    },
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        enabled = true,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme oldworld")
        end,
    },
    {
        "vague-theme/vague.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme vague")
        end,
    }
}

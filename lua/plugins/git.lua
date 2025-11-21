return {
    {
        "NeogitOrg/neogit",
        cmd = "Neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>gg",
                "<cmd>Neogit<cr>",
                desc = "Open Neogit",
            },
        },
        opts = {},
    },
}

return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@module "snacks"
    ---@type Snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = false},
        explorer = { enabled = false},
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true, style = "minimal" },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = false},
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
}

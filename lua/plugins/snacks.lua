return {
    "folke/snacks.nvim",
    priority = 1000,
    enabled = true,
    lazy = false,
    ---@module "snacks"
    ---@type Snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = false
        },
        explorer = { enabled = false },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = false },
        notifier = { enabled = true, style = "minimal" },
        quickfile = { enabled = true },
        scope = { enabled = false },
        scroll = { enabled = false },
        statuscolumn = { enabled = true },
        words = { enabled = false },
    },
    keys = {
        {
            "<leader>n",
            function()
                if Snacks.config.picker and Snacks.config.picker.enabled then
                    Snacks.picker.notifications()
                else
                    Snacks.notifier.show_history()
                end
            end,
            desc = "Notification History",
        },
        {
            "<leader>un",
            function()
                Snacks.notifier.hide()
            end,
            desc = "Dismiss All Notifications",
        },
        {
            "<leader>t",
            function()
                Snacks.terminal()
            end,
            desc = "Open Terminal",
        },
    },
}

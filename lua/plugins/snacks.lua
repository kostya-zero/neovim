return {
    "snacks.nvim",
    opts = function(_, opts)
        opts.dashboard = {
            enabled = true,
            preset = {
                header = "",
            },
            sections = {
                { section = "header" },
                { width = 10, section = "keys", indent = 0, padding = 1 },
                -- { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                { section = "startup" },
            },
        }
        opts.explorer = {
            enabled = false,
        }
        opts.scroll = {
            enabled = false,
        }
        opts.notifier.style = "minimal"
        return opts
    end,
}

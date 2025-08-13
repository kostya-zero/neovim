return {
    {
        "tokyonight.nvim",
        enabled = false,
    },
    {
        "catppuccin",
        enabled = false,
    },
    {
        "wtfox/jellybeans.nvim",
        lazy = false,
        enabled = true,
        priority = 1100,
        opts = {
            background = {
                dark = "jellybeans_muted",
                light = "jellybeans_muted_light",
            },
        },
    },
}

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
            transparent = false,
            background = {
                dark = "jellybeans_mono",
                light = "jellybeans_mono_light",
            },
        },
    },
}

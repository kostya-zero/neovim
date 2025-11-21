return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        priority = 1000,
        enabled = false,
        opts = {
            transprarent = false,
        },
    },
    {
        "WTFox/jellybeans.nvim",
        lazy = false,
        priority = 1000,
        enabled = true,
        opts = {
            background = {
                dark = "jellybeans_mono",
                light = "jellybeans_mono_light",
            },
        },
    },
}

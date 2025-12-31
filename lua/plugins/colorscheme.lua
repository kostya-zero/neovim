return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        priority = 1000,
        opts = {
            transprarent = false,
        },
    },
    {
        "WTFox/jellybeans.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            italics = false,
            background = {
                dark = "jellybeans_mono",
                light = "jellybeans_mono_light",
            },
        },
    },
}

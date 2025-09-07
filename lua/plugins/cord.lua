return {
    "vyfor/cord.nvim",
    enabled = true,
    build = ":Cord update",
    opts = {
        editor = {
            client = "lazyvim",
        },
        idle = {
            enabled = false,
        },
    },
}

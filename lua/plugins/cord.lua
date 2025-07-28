return {
    "vyfor/cord.nvim",
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

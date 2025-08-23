return {
    "vyfor/cord.nvim",
    enabled = false,
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

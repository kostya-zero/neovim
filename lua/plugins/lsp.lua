return {
    {
        "nvim-lspconfig",
        enabled = true,
        opts = function(_, opts)
            opts.servers.lua_ls.settings.Lua.runtime = { version = "LuaJIT" }
            opts.servers.lua_ls.settings.Lua.workspace.library = {
                vim.fn.expand("$VIMRUNTIME/lua"),
                vim.fn.stdpath("data") .. "/lazy/",
                "${3rd}/luv/library",
            }
            return opts
        end,
    },
    {
        "nvim-lint",
        enabled = true,
    },
    {
        "mason.nvim",
        enabled = true,
    },
    {
        "mason-lspconfig.nvim",
        enabled = true,
    },
}

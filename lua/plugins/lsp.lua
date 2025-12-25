return {
    {
        "nvim-lspconfig",
        enabled = true,
        opts = function(_, opts)
            -- Better support for 3rd-party Lua libraries
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
        enabled = false,
    },
    {
        "mason.nvim",
        enabled = false,
        opts = function(_, opts)
            opts.ensure_installed = {
                "gopls",
                "gomodifytags",
                "impl",
                "delve",
                "goimports",
                "gofumpt",
            }
            return opts
        end,
    },
    {
        "mason-lspconfig.nvim",
        enabled = false,
    },
}

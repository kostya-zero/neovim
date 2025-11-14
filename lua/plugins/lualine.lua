local function current_dir()
    local cwd = vim.fn.getcwd()
    return vim.fn.fnamemodify(cwd, ":t")
end

return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    event = "VeryLazy",
    opts = function()
        local config = {
            options = {
                theme = "auto",
                globalstatus = true,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
            },
            sections = {
                lualine_a = {
                    -- get_mode(),
                },
                lualine_b = {
                    {
                        "mode",
                        color = { gui = "bold" },
                        fmt = function(str)
                            return " " .. str
                        end,
                    },
                },
                lualine_c = {
                    {
                        "branch",
                        icon = "",
                        padding = { left = 1, right = 1 },
                    },
                    {
                        "diagnostics",
                        colored = false,
                        symbols = { error = " ", warn = " ", info = " ", hint = " " },
                    },
                },
                lualine_x = {
                    {
                        "location",
                        padding = {
                            left = 1,
                            right = 1,
                        },
                    },
                    {
                        "diff",
                        colored = false,
                        symbols = { added = " ", modified = "󰏫 ", removed = " " },
                    },
                },
                lualine_y = {
                    { current_dir, icon = "", color = { gui = "bold" } },
                },
                lualine_z = {
                    -- get_mode()
                },
            },
        }
        return config
    end,
}

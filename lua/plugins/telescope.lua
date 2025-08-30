return {
    "telescope.nvim",
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        -- This is a workaround for Windows only to make possible to work in
        -- projects like Next.js and Svelte. Found in grug-far PR.
        local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1
        local vimfnameescape = vim.fn.fnameescape
        local winfnameescape = function(path)
            local escaped_path = vimfnameescape(path)
            if is_windows then
                local need_extra_esc = path:find("[%[%]`%$~]")
                local esc = need_extra_esc and "\\\\" or "\\"
                escaped_path = escaped_path:gsub("\\[%(%)%^&;]", esc .. "%1")
                if need_extra_esc then
                    escaped_path = escaped_path:gsub("\\\\['` ]", "\\%1")
                end
            end
            return escaped_path
        end

        local select_default = function(prompt_bufnr)
            vim.fn.fnameescape = winfnameescape
            local result = actions.select_default(prompt_bufnr, "default")
            vim.fn.fnameescape = vimfnameescape
            return result
        end

        telescope.setup({
            pickers = {
                find_files = {
                    previewer = false,
                    theme = "dropdown",
                    layout_config = {
                        center = { width = 0.65, height = 0.7 },
                    },
                },
            },
            defaults = {
                mappings = {
                    i = {
                        ["<cr>"] = select_default,
                    },
                    n = {
                        ["<cr>"] = select_default,
                    },
                },
            },
        })
    end,
}

local keymap = vim.keymap
-- local opts = { silent = true, noremap = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable explorer
keymap.set("n", "<leader>e", "", { remap = true })
keymap.set("n", "<leader>E", "", { remap = true })

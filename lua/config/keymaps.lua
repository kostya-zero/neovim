local keymap = vim.keymap
-- local opts = { silent = true, noremap = true }

-- Better increment / decrement keymaps
keymap.set("n", "+", "<C-a>", { remap = true })
keymap.set("n", "-", "<C-x>", { remap = true })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

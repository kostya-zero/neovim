---@type vim.lsp.Config
return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	settings = {
		["rust-analyzer"] = {
			procMacro = { enable = true },
			cargo = { allFeatures = true },
			-- checkOnSave = false,
			-- diagnostics = false,
		},
	},
	root_markers = {
		"Cargo.lock",
		"Cargo.toml",
	},
}

---@type vim.lsp.Config
return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
				loadOutDirsFromCheck = true,
				buildScripts = {
					enable = true,
				},
			},
			check = {
				command = "clippy",
			},
			diagnostics = {
				enable = true,
			},
			procMacro = {
				enable = true,
				ignored = {
					["async-trait"] = { "async_trait" },
					["napi-derive"] = { "napi" },
					["async-recursion"] = { "async_recursion" },
				},
			},
			files = {
				excludeDirs = {
					".direnv",
					".git",
					".github",
					".gitlab",
					"bin",
					"node_modules",
					"target",
					"venv",
					".venv",
				},
			},
		},
	},
	root_markers = {
		"Cargo.lock",
		"Cargo.toml",
	},
}

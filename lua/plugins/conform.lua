return {
	"stevearc/conform.nvim",
	event = "BufReadPost",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt" },
			javascript = { "prettier", stop_after_first = true },
			javascriptreact = { "prettier", stop_after_first = true },
			typescript = { "prettier", stop_after_first = true },
			typescriptreact = { "prettier", stop_after_first = true },
			tsx = { "prettier", stop_after_first = true },
			c = { "clang-format" },
			cpp = { "clang-format" },
		},
		format_on_save = {
			timeout_ms = 4000,
			lsp_format = "fallback",
		},
	},
}

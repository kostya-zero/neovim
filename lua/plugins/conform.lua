return {
	"stevearc/conform.nvim",
    event = "BufReadPost",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt" },
			javascript = { "prettier", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 4000,
			lsp_format = "fallback",
		},
	},
}

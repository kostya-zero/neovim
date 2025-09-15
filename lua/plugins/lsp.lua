return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason.nvim" },
	event = { "BufReadPre", "BufNewFile", "BufWritePre" },
}

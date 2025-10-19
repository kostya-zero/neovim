local function on_attach(client, bufnr)
	local function opts(desc)
		return { buffer = bufnr, desc = desc }
	end

	local map = vim.keymap.set
	map("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
	map("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))
	map("n", "<leader>ca", vim.lsp.buf.code_action, opts("Code actions"))
	map("n", "<leader>cc", vim.lsp.codelens.run, opts("Run Codelens"))
	map("n", "<leader>cC", vim.lsp.codelens.refresh, opts("Refresh & Display Codelens"))
	map("n", "<leader>cr", vim.lsp.buf.rename, opts("Rename"))
	map("n", "K", function()
		return vim.lsp.buf.hover()
	end, opts("Hover"))
end

vim.diagnostic.config({
	underline = true,
	virtual_text = {
		prefix = "●",
		source = "if_many",
		spacing = 4,
	},

	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
	severity_sort = true,
	update_in_insert = false,
	inlay_hints = {
		enabled = true,
	},
	codelens = {
		enabled = false,
	},
})

vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

vim.lsp.enable({
	"lua",
	"rust",
	"go",
	"clang",
	"ts_ls",
	"tailwind",
	"svelte_lsp",
	"eslint_lsp",
	"css_ls",
	"html",
})

vim.lsp.config("*", {
	on_attach = on_attach,
})

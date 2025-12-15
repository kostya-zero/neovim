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
        prefix = "",
        severity = nil,
        source = "if_many",
        format = nil,
    },
    signs = true,
    severity_sort = true,
    update_in_insert = false,
})

local capabilities = vim.tbl_deep_extend(
    "force",
    vim.lsp.protocol.make_client_capabilities(),
    require("blink.cmp").get_lsp_capabilities()
)
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false

vim.lsp.config("*", {
    on_attach = on_attach,
    capabilities = capabilities,
})

vim.lsp.enable({
    "lua",
    "css_ls",
    "html",
})

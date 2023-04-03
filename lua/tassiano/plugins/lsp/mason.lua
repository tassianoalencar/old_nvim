local M = {}

M.setup = function(lsp_servers, null_servers)
	local mason = require("mason")
	local mason_lspconfig = require("mason-lspconfig")
	local mason_null_ls = require("mason-null-ls")

	-- enable mason
	mason.setup({
		PATH = "prepend",
	})

	mason_lspconfig.setup({
		ensure_installed = lsp_servers,
		automatic_installation = true,
	})

	mason_null_ls.setup({
		ensure_installed = null_servers,
		automatic_installation = true,
	})
end

return M

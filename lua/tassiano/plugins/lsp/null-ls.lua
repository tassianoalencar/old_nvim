local M = {}

M.setup = function()
	local null_ls = require("null-ls")
	local formatting = null_ls.builtins.formatting
	local diagnostics = null_ls.builtins.diagnostics

	-- to setup format on save
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

	-- configure null_ls
	null_ls.setup({
		sources = {
			formatting.prettier,
			formatting.stylua,
			diagnostics.eslint_d.with({
				condition = function(utils)
					return utils.root_has_file(".eslintrc.js")
				end,
			}),
		},
		on_attach = function(current_client, bufnr)
			-- if current_client.supports_method("textDocument/formatting") then
			-- 	vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			-- 	vim.api.nvim_create_autocmd("BufWritePre", {
			-- 		group = augroup,
			-- 		buffer = bufnr,
			-- 		callback = function()
			-- 			vim.lsp.buf.format({
			-- 				timeout_ms = 5000,
			-- 				filter = function(client)
			-- 					return client.name == "null-ls"
			-- 				end,
			-- 				bufnr = bufnr,
			-- 			})
			-- 		end,
			-- 	})
			-- end
		end,
	})
end

return M

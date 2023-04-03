return {
	"williamboman/mason.nvim",
	event = "BufRead",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"jose-elias-alvarez/typescript.nvim",
		"jose-elias-alvarez/null-ls.nvim",
		"jayp0521/mason-null-ls.nvim",
		{ "glepnir/lspsaga.nvim" },
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local lsp_servers = { "lua_ls", "tsserver", "tailwindcss", "intelephense", "emmet_ls", "html", "cssls", "yamlls" }
		local null_servers = { "prettier", "stylua", "eslint_d", "phpcsfixer" }

		require("tassiano.plugins.lsp.mason").setup(lsp_servers, null_servers)
		require("tassiano.plugins.lsp.lspconfig").setup(lsp_servers)
		require("tassiano.plugins.lsp.lspsaga").setup()
		require("tassiano.plugins.lsp.null-ls").setup()
	end,
}

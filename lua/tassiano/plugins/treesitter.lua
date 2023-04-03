return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"RRethy/nvim-treesitter-endwise",
		"nvim-treesitter/nvim-treesitter-textobjects",
		"RRethy/nvim-treesitter-textsubjects",
	},
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
      ensure_installed = "all",
			highlight = {
				enable = true,
			},
			context_commentstring = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			endwise = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["if"] = "@function.inner",
						["af"] = "@function.outer",
						["ia"] = "@parameter.inner",
						["aa"] = "@parameter.outer",
					},
				},
			},
			textsubjects = {
				enable = true,
				prev_selection = ",", -- (Optional) keymap to select the previous selection
				keymaps = {
					["."] = "textsubjects-smart",
					[";"] = "textsubjects-container-outer",
					["i;"] = "textsubjects-container-inner",
				},
			},
		})
	end,
}

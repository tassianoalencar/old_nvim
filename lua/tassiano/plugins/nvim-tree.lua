-- File tree sidebar
return {
	"nvim-tree/nvim-tree.lua",
	cmd = { "NvimTreeToggle" },
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
	},
	config = function()
		local nvim_tree = require("nvim-tree")
		local nvim_tree_config = require("nvim-tree.config")

		nvim_tree.setup({
			view = {
				mappings = {
					list = {
						{ key = { "l", "<CR>", "o" }, cb = nvim_tree_config.nvim_tree_callback("edit") },
						{ key = "h", cb = nvim_tree_config.nvim_tree_callback("close_node") },
						{ key = "v", cb = nvim_tree_config.nvim_tree_callback("vsplit") },
					},
				},
			},
		})
	end,
}

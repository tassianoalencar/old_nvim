-- Display buffers as tabs
return {
	"romgrk/barbar.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	event = "BufRead",
	config = function()
		local keymap = vim.keymap.set
		local opts = { noremap = true, silent = true }

		require("bufferline").setup()

		-- Move to previous/next
		keymap("n", "<S-h>", "<Cmd>BufferPrevious<CR>", opts)
		keymap("n", "<S-l>", "<Cmd>BufferNext<CR>", opts)
		keymap("n", "<leader>bp", "<Cmd>BufferPin<CR>", opts)
		keymap("n", "<leader>bq", "<Cmd>BufferClose<CR>", opts)
		keymap("n", "<leader>bx", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
	end,
}

local M = {}

M.setup = function()
	local saga = require("lspsaga")

	saga.setup({
		--symbol_in_winbar = {
		--  enable = false,
		--},
		scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
		definition = {
			edit = "<CR>",
		},
		ui = {
			colors = {
				normal_bg = "#022746",
			},
		},
	})
end

return M

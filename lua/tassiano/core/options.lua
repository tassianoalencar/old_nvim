local options = {
	opt = {
		number = true, -- Show numberline
		relativenumber = true, -- Show relative numberline
		cursorline = true, -- Highlight the text line of the cursor
		expandtab = true, -- Enable the use of space in tab
		tabstop = 2, -- Number of space in a tab
		shiftwidth = 2, -- Number of space inserted for indentation
		autoindent = true,
		mouse = "a", -- Enable mouse support
		completeopt = { "menu", "menuone", "noselect" }, -- Options for insert mode completion
		fileencoding = "utf-8", -- File content encoding for the buffer
		scrolloff = 5, -- Number of lines to keep above and below the cursor
		sidescrolloff = 5, -- Number of columns to keep at the sides of the cursor
		signcolumn = "yes", -- Always show the sign column
		undofile = true, -- Enable persistent undo
		clipboard = "unnamedplus", -- Connection to the system clipboard
		fillchars = { eob = " " }, -- Disable `~` on nonexistent lines
		ignorecase = true, -- Case insensitive searching
		smartcase = true, -- Case sensitivie searching
		splitbelow = true, -- Splitting a new window below the current one
		splitright = true, -- Splitting a new window at the right of the current one
		termguicolors = true, -- Enable 24-bit RGB color in the TUI
		wrap = false, -- don't break line
	},
	g = {
		mapleader = " ", -- set leader key
		highlighturl_enabled = true, -- highlight URLs by default
	},
}

for scope, table in pairs(options) do
	for setting, value in pairs(table) do
		vim[scope][setting] = value
	end
end

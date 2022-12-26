require("legendary").setup({
	keymaps = {
		-- map keys to a command
		{ "<leader>ff", ":Telescope find_files<CR>}", description = "Find files" },
		-- map keys to a function
		{
			":UltiSnipsEdit<CR>",
			description = "Edit UltiSnips",
		},
		-- keymaps have opts.silent = true by default, but you can override it
		{ "<leader>s", ":SomeCommand<CR>", description = "Non-silent keymap", opts = { silent = false } },

		-- create item groups to create sub-menus in the finder

		-- note that only keymaps, commands, and functions
		-- can be added to item groups
		{
			-- groups with same itemgroup will be merged
			itemgroup = "short ID",
			description = "A submenu of items...",
			icon = "",
			keymaps = {
				-- more keymaps here
			},
		},
	},
	commands = {
		-- easily create user commands
		{
			-- example command for toggling comment with Comment.nvim
			":Comment",
			{
				n = "gcc",
				v = "gc",
			},
			description = "Toggle comment",
		},
		{
			-- groups with same itemgroup will be merged
			itemgroup = "short ID",
			-- don't need to copy the other group data because
			-- it will be merged with the one from the keymaps table
			commands = {
				-- more commands here
			},
		},
	},
	funcs = {
		-- Make arbitrary Lua functions that can be executed via the item finder
		{
			function()
				doSomeStuff()
			end,
			description = "Do some stuff with a Lua function!",
		},
		{
			-- groups with same itemgroup will be merged
			itemgroup = "short ID",
			-- don't need to copy the other group data because
			-- it will be merged with the one from the keymaps table
			funcs = {
				-- more funcs here
			},
		},
	},
	autocmds = {
		-- Create autocmds and augroups
		{ "BufWritePre", vim.lsp.buf.format, description = "Format on save" },
		{
			name = "MyAugroup",
			clear = true,
			-- autocmds here
		},
	},
})

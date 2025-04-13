require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true,
	show_end_of_buffer = false, -- show the '~' characters after the end of buffers
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = { "bold" },
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {},
	custom_highlights = function(colors)
		return {
			Comment = { fg = "#C0C0C0" },
			Folded = { fg = "#679AFF" },
			--NonText = { fg = "#FF3960" },
			CursorLineNr = { fg = "#FFED6B" },
			LineNrAbove = { fg = "#FEFFCD" },
			LineNrBelow = { fg = "#FEFFCD" },
			Statement = { fg = "#FFA8B3" },
			Normal = { fg = "#FFFFFF" },
			Delimiter = { fg = "#A5C9FF" },
			--Special = { fg = "#FFD1A3" },
			--Operator = {fg = "FEFFCD"},
			--SpecialChar = { fg = "#FEFFCD" },
			texCmdGreek = { fg = "#89FFBB" },
			--texMathSub = { fg = "#89FFBB" },
			texCmdRef = { fg = "#CFADFF" },
			--Number = { fg = "#FF0505" },
			texCmdEnv = { fg = "#C2D69B" },
		}
	end,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = false,
		telescope = true,
		notify = false,
		mini = false,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")

local status, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not status then
	print("Colorscheme not found!")
	return
end

-- Disable imaps (using Ultisnips)
vim.g.vimtex_imaps_enabled = 0
-- Do not open pdfviwer on compile
vim.g.vimtex_view_automatic = 0
vim.o.conceallevel = 1
vim.g.tex_conceal = "abdmg"
-- Disable quickfix auto open
vim.g.vimtex_quickfix_ignore_mode = 0
-- PDF viewer settings
--vim.g.vimtex_view_general_viewer = [[skim]]
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_compiler_progname = "nvr"
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
vim.g.vimtex_skim_activate = 1
vim.g.vimtex_skim_sync = 1
vim.g.vimtex_skim_reading_bar = 1
vim.g.vimtex_indent_enabled = 1
vim.g.tex_flavor = "latex"
vim.g.vimtex_compiler_method = "latexmk"
-- Do not auto open quickfix on compile erros
vim.g.vimtex_quickfix_mode = 0
-- Latex warnings to ignore
vim.g.vimtex_quickfix_ignore_filters = {
	"Command terminated with space",
	"LaTeX Font Warning: Font shape",
	"Package caption Warning: The option",
	[[Underfull \\hbox (badness [0-9]*) in]],
	"Package enumitem Warning: Negative labelwidth",
	[[Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in]],
	[[Package caption Warning: Unused \\captionsetup]],
	"Package typearea Warning: Bad type area settings!",
	[[Package fancyhdr Warning: \\headheight is too small]],
	[[Underfull \\hbox (badness [0-9]*) in paragraph at lines]],
	"Package hyperref Warning: Token not allowed in a PDF string",
	[[Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines]],
}
vim.g.vimtex_fold_enabled = 1

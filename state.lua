local M = {
	buf = nil,
	win = nil,
	ns = vim.api.nvim_create_namespace("TypeTester"),
	idx2lc = {},

	target_text = "",
	char_count = 0,
	pos = 0,
	started = false,
	started_ms = 0,
	duration_ms = 60000,
	timer = nil,

	typed = 0,
	correct = 0,
	wrong = 0,
	running = false,

	mode = "time", -- "time" | "words" | "quotes"
	word_limit = 0,
	quote_len = "short",

	config = {
		width_pct = 0.8,
		height_pct = 0.4,
		min_w = 60,
		min_h = 12,
		border = "rounded",
		word_count = 220,
		time = 60,
		word_source = "default",
		quotes_source = "default",
		quote_lengths = {
			short = { min = 1, max = 25 },
			medium = { min = 26, max = 60 },
			long = { min = 61, max = 9999 },
		},
		wrong_space_symbol = "␣",
		theme = {
			Correct = { fg = "#00af5f", bold = true },
			Wrong = { fg = "#ff5f5f", bold = true },
			Current = { underline = true },
			Dim = { fg = "#6c7086" },
			Title = { fg = "#89b4fa", bold = true },
			WrongChar = { fg = "#ff5f5f", bold = true },
		},
	},
}

return M

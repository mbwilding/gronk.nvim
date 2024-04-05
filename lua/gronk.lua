local M = {}

function M.defaults()
	local defaults = {
		transparent = true,
		switch = false,
	}
	return defaults
end

M.options = {}

function M.setup(options)
	options = options or {}
	M.options = vim.tbl_deep_extend("force", {}, M.defaults(), options)
end

M.base = {
	none = "NONE",

	-- Default UI
	fg = "#bdbdbd",
	bg = "#000000",
	window_bg = "#000000",
	window_accent = "#202020",

	-- Colors
	blue_light = "#4eade5",
	blue_dark = "#6c95eb",
	cyan = "#66c3cc",
	red = "#ff3333",
	pink_light = "#e1bfff",
	pink_dark = "#ed94c0",
	green = "#39cc8f",
	purple_light = "#c191ff",
	purple_dark = "#9591ff",
	brown = "#c9a26d",
	lime = "#85c46c",
	gray_light = "#787878",
	gray_dark = "#4f5258",
	orange_light = "#ffd3b3",
	orange_dark = "#ffb083",
}

M.code = {
	variable = M.base.fg,
	operator = M.base.fg,
	string = M.base.brown,
	delimiter = M.base.fg,
	number = M.base.pink_dark,
	escape = M.base.pink_dark,
	comment = M.base.lime,
	keyword = M.base.blue_dark,
	struct = M.base.purple_light,
	enum = M.base.pink_light,
	interface = M.base.purple_dark,
	method = M.base.green,
	constant = M.base.cyan,
	member = M.base.cyan,
	macro = M.base.blue_light,
	attribute = M.base.purple_light,
	namespace = M.base.orange_dark,
	module = M.base.orange_light,
	redundant = M.base.gray_light,
	hint = M.base.grey_dark,
	todo = M.base.blue_light,
	error = M.base.red,
}

M.primary = M.base.blue_light
M.secondary = M.base.orange_dark

if M.options.switch then
	M.primary = M.base.orange_dark
	M.secondary = M.base.blue_light
end

M.mode = {
	n = M.primary, -- Normal
	i = M.secondary, -- Insert
	v = M.base.green, -- Visual
	[""] = M.base.blue_dark,
	V = M.base.green,
	c = M.base.orange_dark,
	no = M.base.cyan,
	s = M.base.orange_dark,
	S = M.base.orange_dark,
	[""] = M.base.orange_dark,
	ic = M.base.blue_dark,
	R = M.base.pink_dark,
	Rv = M.base.pink_dark,
	cv = M.base.cyan,
	ce = M.base.cyan,
	r = M.base.cyan,
	rm = M.base.cyan,
	["r?"] = M.base.cyan,
	["!"] = M.base.cyan,
	t = M.base.cyan,
	nt = M.base.cyan,
}

return M

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
	blue_dark = "#6c95eb",
	blue_light = "#4eade5",
	brown = "#c9a26d",
	cyan = "#66c3cc",
	gray_dark = "#4f5258",
	gray_light = "#787878",
	green = "#39cc8f",
	lime = "#85c46c",
	orange_dark = "#ffb083",
	orange_light = "#ffd3b3",
	pink_dark = "#ed94c0",
	pink_light = "#e1bfff",
	purple_dark = "#9591ff",
	purple_light = "#c191ff",
	red = "#ff3333",
}

M.code = {
	attribute = M.base.pink_dark,
	comment = M.base.lime,
	constant = M.base.cyan,
	delimiter = M.base.fg,
	enum = M.base.pink_light,
	error = M.base.red,
	escape = M.base.pink_dark,
	hint = M.base.grey_dark,
	interface = M.base.purple_dark,
	keyword = M.base.blue_dark,
	macro = M.base.blue_light,
	member = M.base.cyan,
	method = M.base.green,
	module = M.base.orange_light,
	namespace = M.base.orange_dark,
	number = M.base.pink_dark,
	operator = M.base.fg,
	redundant = M.base.gray_light,
	string = M.base.brown,
	struct = M.base.purple_light,
	todo = M.base.blue_light,
	variable = M.base.fg,
}

M.primary = M.base.orange_dark
M.secondary = M.base.blue_light

if false then
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

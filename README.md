# Gronk

A Rider inspired theme

### Setup

Lazy
```lua
return {
	"mbwilding/gronk.nvim",
	config = function()
		require("gronk").setup({
			transparent = true,
		})

		vim.cmd([[colorscheme gronk]])

		vim.keymap.set("n", "<leader>tG", function()
			vim.cmd([[colorscheme gronk]])
		end, { desc = "Theme: Gronk" })
	end,
}
```

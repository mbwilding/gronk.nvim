# Gronk

A Rider Dark inspired theme

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
  end,
}
```

# Gronk

A custom theme based on Rider Dark that is OLED friendly.

![gronk](promo.jpg)

### Setup

Lazy

```lua
return {
  "mbwilding/gronk.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional setup
    require("gronk").setup({
        transparent = true,
    })

    -- Sets theme
    vim.cmd([[colorscheme gronk]])
  end,
}
```

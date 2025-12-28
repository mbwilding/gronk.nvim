# Gronk

Neovim themes

![gronk](promo.jpg)

### Setup

Lazy
```lua
return {
  "mbwilding/gronk.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme gronk]])
  end,
}
```

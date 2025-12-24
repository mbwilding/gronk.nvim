# Gronk

Neovim themes

![Rider](promo.jpg)

### Setup

Lazy
```lua
return {
  "mbwilding/gronk.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gronk").setup({
      transparent = true,
    })

    vim.cmd([[colorscheme gronk-wilding]])
  end,
}
```

#### Themes

```vim
" JetBrains Rider Dark inspired - Expanded
colorscheme gronk-wilding

" JetBrains Rider Dark inspired - Original
colorscheme gronk-rider

" Monochrome
colorscheme gronk-mono

" Rock and roll McDonalds
colorscheme gronk-mcdonalds
```

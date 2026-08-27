-- Tokyo Night Setup

vim.pack.add({
  {
    src = "https://github.com/folke/tokyonight.nvim",
    name = "tokyonight.nvim",
  },
})

require("tokyonight").setup({
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  on_highlights = function(hl, c)
    -- Telescope transperency
    hl.TelescopeNormal = { bg = "none", fg = c.fg_dark }
    hl.TelescopeBorder = { bg = "none", fg = c.blue }
    hl.TelescopePromptNormal = { bg = "none" }
    hl.TelescopePromptBorder = { bg = "none", fg = c.magenta }
    hl.TelescopePromptTitle = { bg = "none", fg = c.magenta }
    hl.TelescopePreviewTitle = { bg = "none", fg = c.blue }
    hl.TelescopeResultsTitle = { bg = "none", fg = c.blue }
  end,
})

vim.cmd.colorscheme("tokyonight")


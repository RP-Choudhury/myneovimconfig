-- Lualine Setup

vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim',
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
})

require('lualine').setup({
        options = {
            theme = "catppuccin-mocha",
            icons_enabled = true,
        },
})


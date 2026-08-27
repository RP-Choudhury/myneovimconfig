-- mini-nvim Setup
vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

require("mini.ai").setup({})
require("mini.comment").setup({})
require("mini.move").setup({})
require("mini.surround").setup({})
require("mini.cursorword").setup({})
require("mini.indentscope").setup({
    symbol = "| ",
})
require("mini.pairs").setup({})
require("mini.trailspace").setup({})
require("mini.bufremove").setup({})
require("mini.files").setup({})

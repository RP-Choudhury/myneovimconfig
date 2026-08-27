-- My Treesitter Config,
-- Now this is the most complicated one yet, as a beginner, not even understanding lua correctly this is the hardest part to nail and not mess up but nothing
-- a little determination can't catch up on. The reason why its the hardest and not telescope or even lsp? Well mainly because, of the new updates making it 
-- absoultely horrendous to run. Now is an especially bad time for neovim newbies, since neovim 0.12 ships with such groundbreaking changes that many, plugins 
-- become just incompatible until configured especially in a certain kinda way, especially tree-sitter being not even an example but a tale. I had to delete my 
-- previous enrire neovim config because of it so yeah, please beware.


vim.pack.add({
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
    },
})

local setup_treesitter = function()
    local treesitter = require("nvim-treesitter")
    treesitter.setup({})
    local ensure_installed = {
        "vim",
        "vimdoc",
        "rust",
        "c",
        "cpp",
        "c_sharp",
        "go",
        "html",
        "css",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "typescript",
        "vue",
        "svelte",
        "bash",
    }
    local config = require("nvim-treesitter.config")

    local already_installed = config.get_installed()
    local parsers_to_install = {}

    for _, parser in ipairs(ensure_installed) do
        if not vim.tbl_contains(already_installed, parser) then
            table.insert(parsers_to_install, parser)
        end
    end

    if #parsers_to_install > 0 then
        treesitter.install(parsers_to_install)
    end

    local group = vim.api.nvim_create_augroup("TreeSitterConfig", { clear = true })
    vim.api.nvim_create_autocmd("FileType",{
        group = group,
        callback = function(args)
            if vim.list_contains(config.get_installed(), vim.treesitter.language.get_lang(args.match)) then
                vim.treesitter.start(args.buf)
            end
        end,
    })
    end

    setup_treesitter()

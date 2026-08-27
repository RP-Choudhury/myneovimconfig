-- My Options File
-- Some Basic Options
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.scrolloff = 8
vim.sidescrolloff = 8

-- Tab & Indentation Related Options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search Related Options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Visual Markers & Columns Options
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "185"
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.pumheight = 10
vim.opt.pumblend = 30 -- popup transparency 0 means opaque, 100 means fully transparent
vim.opt.winblend = 30 -- window transparency 0 means opaque, 100 means fully transparent
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 300
vim.opt.fillchars = { eob = " " }

-- File Related Options
vim.opt.backup = false
vim.opt.writebackup = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.autochdir = false

-- Additional Options
vim.opt.clipboard = "unnamedplus"
vim.opt.modifiable = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.mouse = "a"
vim.opt.selection = "inclusive"
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.opt.backspace = { "indent", "eol", "start" }

-- Completioon Options
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

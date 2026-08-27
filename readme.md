## These are my neovim configuration files. (incompatible for neovim verison < 0.12)

# Hello, I am RP, and this is my neovim configuration, which I utilize daily for all my coding and 
# content creation activities. 

# It contains the following plugins:

-- neo-tree.nvim for the file system.
-- Tokyo Night colorscheme & Catppuccin-moccha colorscheme.
-- mini.nvim for auto-pairing quotes and more.
-- lualine.nvim for a very beautiful status line.
-- since the colorscheme of the lualine is catppuccin-mocha, so the config also includes it, meaining you can alternatively use it for as the main colorscheme.
-- telescope.nvim for fzf search of files and grep searching within files and man pages.
-- for git integration, gitsigns.nvim is included.
-- nvim-dap.nvim and nvim-dap-ui.nvim are included for debugging and setup is in deafault for c, c++ and rust, more languages can be added.
-- finally, nvim-treesitter.nvim is configured for neovim 0.12, in such a way that it does not interfere with telescope making it as less buggy as possible.

# There is no package manager except the default vim-pack. This was done for two reasons:

-- for a simpler and low latency setup. 
-- to make sure auto-download isnt auto-enabled.

# This nvim setup required me a lot of time because plugins like the nvim-treesittere interfered with the other plugins.
# Hence, I highly suggest using this configuration just how as its availble since I dont know how to code in lua and cannot fix any issues.
# If this does not run please dont use this config, and please don't send pull request or any kind of suggestions. 

# Oh I forgot, a better verison may be available of this configuration with LSP, since fixing tressitter took so much I did not load any LSP.
# In the meanwhile you can fix errors manually. Also for context since I am a student I don't think I will be adding LSPs till I am proficient in the
# language as my main goal will be to learn, and it can kind of steal my experience of making buggy code and fixing it so please make expectations 
# accordingly.

# I rate this config 6/10.



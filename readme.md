#  My Neovim Configuration

> A lightweight, native-pack Neovim configuration, and is mostly gonna make me regret posting it on the internet but yeah. 

---

##  Overview

Hi, I'm **RP**. This is my daily-driver Neovim setup designed for speed, simplicity, and focused learning. 

Instead of relying on heavy third-party package managers or aggressive autocomplete/LSP setups, this configuration leverages Neovim's native package system (`vim.pack` / built-in `packpath`) to ensure zero background updates, minimal startup latency, and maximum stability.

> ⚠️ **Requirement:** **Neovim `v0.12+`** is strictly required. This configuration is **incompatible** with Neovim versions `< 0.12`.
> ⚠️ **Note:** If you use any other plugin manager, other than **Neovim `v0.12+`'s** defalut plugin manager you may need to rewrite the config files.

---


## Included Plugins

| Category | Plugin | Description |
| :--- | :--- | :--- |
| **File Explorer** | [`neo-tree.nvim`](https://github.com/nvim-neo-tree/neo-tree.nvim) | Modern file system and tree navigator. |
| **Colorschemes** | [`tokyonight.nvim`](https://github.com/folke/tokyonight.nvim) & [`catppuccin`](https://github.com/catppuccin/nvim) | Tokyo Night as primary; Catppuccin Mocha as alternative/theme base. |
| **Statusline** | [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim) | Clean, fast status line styled with the Catppuccin Mocha theme. |
| **Editing & Pairs** | [`mini.nvim`](https://github.com/echasnovski/mini.nvim) | Fast auto-pairing for quotes, brackets, and handy utilities. |
| **Fuzzy Finder** | [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) | Interactive fzf search for files, live-grep search across buffers, and man pages. |
| **Git Integration** | [`gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim) | Git change indicators in the sign column and inline diffs. |
| **Debugging (DAP)** | [`nvim-dap`](https://github.com/mfussenegger/nvim-dap) & [`nvim-dap-ui`](https://github.com/rcarriga/nvim-dap-ui) | Step debugging out of the box for **C**, **C++**, and **Rust** (expandable to more). |
| **Syntax Highlighting** | [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) | Optimized for Neovim 0.12, tuned specifically to prevent collisions with Telescope. |

---

## Package Management: Native `vim-pack`

This configuration intentionally avoids external plugin managers (such as lazy.nvim, packer, or vim-plug) in favor of Neovim's built-in package system.

### Why native packaging?
1. **Low Latency & Fast Startup:** No extra overhead or hook-resolution layers. (In other words I have a budget computer and I love ricing.)
2. **Predictable & Deterministic:** No background downloads, unprompted breaking updates, or unexpected network calls. (In simpler words, since the plugins are all in perpetual beta stage using as less as required is probably optimal. You can't be robbed if ya dont have money.)

---

##  Design Philosophy: Why No LSP (Yet)?

You might notice there is **no Language Server Protocol (LSP)** configured in this setup. This is an intentional choice:

- **Learning-First Mindset:** As a student, relying heavily on LSP autocompletion and instant diagnostics can bypass the valuable learning process of reading compiler outputs, making mistakes, and diagnosing bugs manually.
- **Stability First:** Resolving conflicts between Treesitter and other plugins took significant fine-tuning. Adding LSP will be considered once I feel the need for them now, you can add them yourself if you wanna.

## What to do while waiting for LSP?

- read a book 
- use vscode
- use someone elses setup


---

##  Installation & Usage

1. Ensure your Neovim version is **0.12 or newer**:
   ```bash
   nvim --version
2. Ask an llm like Gemini, ChatGPT, Claude or any thing you like for the next steps since I am still on ThePrimagens git tutorial, will update once I complete the tutorial though.



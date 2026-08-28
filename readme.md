#  My Neovim Configuration

> A lightweight, native-pack Neovim configuration. Does the job.

---

##  Overview

Hi, I'm **RP**. This is the Neovim configuration I am perosnally utilizing and I love it for its simplicity, low ram consumption and just the focused learning experience I get while coding in it. It helped me finally switch from `Visual Studio Code` to  `Neovim`. 

This configuration does not use any third-party package managers like `lazy-nvim` or `packer`. It uses Neovim's native package manager (`vim.pack`) for installing all of the plugins.

> ⚠️ **Requirement:** **Neovim `v0.12+`** is strictly required. This configuration is **incompatible** with Neovim versions `< 0.12`. This is because all of the plugins are installed using `vim.pack` which is only available in Neovim versions `> 0.12`. If you use any other plugin manager, other than `vim.pack` you may need to rewrite the config files.

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

## Issues I needed to solve

Most of the plugins did not work with each other especially tressiter, not working with almost everything. And Telescope, where aligning it with the colortheme was extremely hard, but not as hard as fixing treesitter.

---

## Package Manager: Native `vim-pack` that comes with Neovim `v0.12+` 

This configuration intentionally avoids external plugin managers (such as lazy.nvim, packer, or vim-plug) in favor of Neovim's built-in package system.

### Why the native pack manager?
1. **Low Latency & Fast Startup:** No extra overhead or hook-resolution layers. (In other words I have a budget computer and I love ricing.)
2. **Predictable & Deterministic:** No background downloads, unprompted breaking updates, or unexpected network calls. (In simpler words, since the plugins are all in perpetual beta stage using as little plugins is optimal and vim.pack is perfect for this as you dont have to download a package manger(another plugin) and it does not auto-update, so if something works now it will work later too.)

---

### If you still want to use some other package manager? 

For now you can go to each plugin's individual github or documentation page(I have linked the github pages on the list of plugins.), and use thier installation guide for other package managers.

---
##  Design Philosophy: Why No LSP (Yet)?

You might notice there is no **Language Server Protocol (LSP)** configured in this setup. This is an intentional choice:

- **Learning-First Mindset:** As a student, relying heavily on LSP autocompletion and instant diagnostics can bypass the valuable learning process of reading compiler outputs, making mistakes, and diagnosing bugs manually.
- **Stability First:** Resolving conflicts between Treesitter and other plugins took significant fine-tuning. Adding LSP will be considered once I feel the need for them.

### If you really want LSP? 

You can just search for any tutorial on YouTube to add LSP or other plugins but treesitter has scarred me so please check if it breaks anything. It literally broke Telescope. It is probably also the reason I am learning verison control and trying to be proficient so I can avoid updating it, as it will probably break more than it will add.

### What to do while waiting for LSP?

- Read the language documentations to check for errors manually.
- Use `Visual Studio Code`.
- Think the requirement of an LSP, and coding if AI is eventually going to take our job and we all are gonna be homeless, jobless and broke anyway.

---

##  Installation & Usage

1. Ensure your Neovim version is **0.12 or newer**:
   ```bash
   nvim --version
2. Ask an llm like Gemini, ChatGPT, Claude or any thing you like for the next steps since I am still on ThePrimagens Git tutorial; Will update this once I complete the tutorial though.

---

## Credits

Thank You, truly if you read till the end. I am a college student and am currently learning about git and github so I may not be very proficient in the repository & neovim business, but I hope it can help you.

* **Contributor:** R.P. Choudhury (owner)
* **Github:** [@RP-Choudhury](https://github.com/RP-Choudhury)
* **LinkedIN:** [Rudra Pratap Choudhury](https://www.linkedin.com/in/rudra-pratap-choudhury)
* **License:** Distributed under the [MIT License](LICENSE).

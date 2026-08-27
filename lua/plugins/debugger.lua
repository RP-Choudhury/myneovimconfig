-- Main feature for debigging
vim.pack.add({
    { src = "https://github.com/mfussenegger/nvim-dap", name = "nvim-dap" },
    { src = "https://github.com/rcarriga/nvim-dap-ui", name = "nvim-dap-ui" },
    { src = "https://github.com/nvim-neotest/nvim-nio", name = "nvim-nio" },
})

local dap = require("dap")
local dapui = require("dapui")

dapui.setup({})
dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

vim.keymap.set("n", "<Leader>br", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<Leader>bc", dap.continue, {})
vim.keymap.set("n", "<Leader>bq", dap.terminate, {})

-- C/C++/Rust config
-- Adapter

dap.adapters.lldb = {
  type = 'executable',
  command = '/opt/homebrew/Cellar/llvm/22.1.8_2/bin/lldb-dap',
  name = 'lldb',
}

-- Config

dap.configurations.c = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = dap.configurations.c

-- Custom breakpoints
vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#f7768e" })
vim.api.nvim_set_hl(0, "DapBreakpointCondition", { fg = "#bb9af7" })
vim.api.nvim_set_hl(0, "DapStopped", { fg = "#9ece6a" })

vim.fn.sign_define("DapBreakpoint", {
  text = "●",
  texthl = "DapBreakpoint",
  linehl = "",
  numhl = "",
})
vim.fn.sign_define("DapBreakpointCondition", {
  text = "◆",
  texthl = "DapBreakpointCondition",
  linehl = "",
  numhl = "",
})
vim.fn.sign_define("DapStopped", {
  text = "▶",
  texthl = "DapStopped",
  linehl = "DapStopped",
  numhl = "",
})

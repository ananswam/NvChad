local M = {}

M.general = {
    i = {
      ["kj"] = {"<ESC>", "Exit insert mode"},
    },
}

M.lspconfig = {
  n = {
    ["dg"] = {
      "<C-o>",
      "Go Back",
    },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>do"] = {
      '<cmd> lua require("dapui").open() <CR>',
      "Open the debugging UI"
    },
    ["<leader>dc"] = {
      '<cmd> lua require("dapui").close() <CR>',
      "Close the debugging UI"
    }
  }
}

return M

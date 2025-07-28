local M = {}

M.general = {
    i = {
      ["kj"] = {"<ESC>", "Exit insert mode"},
    },
    n = {
      ["<C-e>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    },
}

M.lspconfig = {
  n = {
    ["dg"] = {
      "<C-o>",
      "Go Back",
    },
    ["<leader>th"] = {
      function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end,
      "Toggle inlay hints",
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

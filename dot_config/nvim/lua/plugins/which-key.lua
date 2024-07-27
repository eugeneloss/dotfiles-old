return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      local wk = require("which-key")
      wk.register({
        ["<C-p>"] = { "Find File" },
        ["<C-n>"] = { ":Neotree left <CR>", "NeoTree" },
        ["<Tab>"] = { ":bnext<CR>", "Next Buffer" },
        ["<S-Tab>"] = { ":bprev<CR>", "Previous Buffer" },
        ["<C-d>"] = { "<C-d>M", "Scroll down" },
        ["<C-u>"] = { "<C-u>M", "Scroll up" },
        K = { "Define Function" },
        ["<leader>"] = {
          z = { ":wqa <CR>", "Quit All" },
          q = { ":q! <CR>", "Quit buffer" },
          w = { ":w <CR>", "Save buffer" },
          f = {
            name = "File",
            g = { "Live Grep" },
          },
          g = {
            name = "Formatting",
            f = { "Format" },
          },
          u = { "Incline" },
          c = {
            name = "Code",
            a = { "Action" },
          },
          e = {
            name = "NeoTree Options",
            e = {
              ":Neotree toggle left<CR>",
              "Toggle Neotree",
            },
          },
          b = {
            name = "Buffer",
            d = {
              ":Bdelete<CR>",
              "Delete Buffer",
            },
          },
        },
      })
    end,
  },
}

return {
  { "max397574/better-escape.nvim", opts = {} },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = 200,
      win = {
        wo = {
          wrap = true
        }
      },
      icons = {
        mappings = false,
      }
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.add({
        { "<leader>m",   group = "Method/Function Swap" },
        { "<leader>a",   group = "Parameter Swap" },
        { "<leader>c",   group = "Code" },
        { "<leader>cx",  group = "Diagnostics" },
        { "<leader>cs",  group = "Swap" },
        { "<leader>csa", group = "Arguments" },
        { "<leader>csm", group = "Methods" },
        { "<leader>f",   group = "Find" },
        { "<leader>g",   group = "Git" },
        { "<leader>s",   group = "Sessions/Split" },
        { "]",           group = "Next Object" },
        { "[",           group = "Previous Object" },
      })
    end,
  },
  {
    "nvzone/showkeys",
    opts = {
      position = "top-right",
      show_count = true,
      maxkeys = 4,
    },
    keys = {
      { "<leader>tk", "<cmd>ShowkeysToggle<cr>", desc = "Show keys toggle" },
    }
  },
}

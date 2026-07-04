return {
  { "nvim-mini/mini.ai",        opts = {} },
  { "nvim-mini/mini.move",      opts = {} },
  { "nvim-mini/mini.operators", opts = {} },
  { "nvim-mini/mini.pairs",     opts = { modes = { insert = true, command = true, terminal = false }, markdown = true, skip_unbalanced = true } },
  { "nvim-mini/mini.surround",  opts = {} },
  {
    "nvim-mini/mini.completion",
    opts = {}
  },
  {
    "nvim-mini/mini.snippets",
    dependencies = { { "rafamadriz/friendly-snippets" },
      { "L3MON4D3/LuaSnip" } }
  },
  {
    "nvim-mini/mini.files",
    lazy = false,
    opts = {
      content = {
        prefix = function() end,
      },
      windows = {
        max_number = 3,
        width_focus = 30,
      },
      mappings = {
        go_in_plus = 'l',
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          if not require("mini.files").close() then
            require('mini.files').open(nil)
          end
        end,
        desc = "Explorer"
      }
    },
    config = function(_, opts)
      local minifiles = require("mini.files")
      minifiles.setup(opts)
      local set_mark = function(id, path, desc)
        minifiles.set_bookmark(id, path, { desc = desc })
      end
      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniFilesExplorerOpen",
        callback = function()
          set_mark("c", vim.fn.stdpath("config"), "Config")
          set_mark("w", vim.fn.getcwd(), "Working directory")
          set_mark("h", "~", "Home directory")
        end,
      })
    end
  },
}

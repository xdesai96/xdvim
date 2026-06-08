return {
  { "nvim-mini/mini.completion", dependencies = { "nvim-mini/mini.snippets", dependencies = { { "rafamadriz/friendly-snippets" } } },            opts = {} },
  { "nvim-mini/mini.move",       opts = {} },
  { "nvim-mini/mini.operators",  opts = {} },
  { "nvim-mini/mini.pairs",      opts = { modes = { insert = true, command = true, terminal = false }, markdown = true, skip_unbalanced = true } },
  { "nvim-mini/mini.surround",   opts = {} },
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
    }
  },
  {
    "ibhagwan/fzf-lua",
    lazy = false,
    opts = {
      winopts = {
        height = 0.9,
        width = 0.9,
        preview = {
          layout = "horizontal",
          vertical = "up:60%",
        },
      },
    },
    config = function(_, opts)
      local fzf = require("fzf-lua")
      fzf.setup(opts)
      fzf.register_ui_select()
    end,
    keys = {
      { "<leader>:",   "<cmd>FzfLua command_history<cr>",       desc = "Command history" },
      { "<leader>ce",  "<cmd>FzfLua lsp_declarations<cr>",      desc = "Find declarations" },
      { "<leader>ca",  mode = { "v", "n" },                     "<cmd>FzfLua lsp_code_actions<cr>", desc = "Code actions" },
      { "<leader>cd",  "<cmd>FzfLua lsp_definitions<cr>",       desc = "Find definitions" },
      { "<leader>ci",  "<cmd>FzfLua lsp_implementations<cr>",   desc = "Find implementations" },
      { "<leader>cr",  "<cmd>FzfLua lsp_references<cr>",        desc = "Find references" },
      { "<leader>ct",  "<cmd>FzfLua lsp_typedefs<cr>",          desc = "Find type definitions" },
      { "<leader>cxw", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace diagnostics" },
      { "<leader>cxd", "<cmd>FzfLua diagnostics_document<cr>",  desc = "Document diagnostics" },
      { "<leader>fb",  "<cmd>FzfLua buffers<cr>",               desc = "Find buffers" },
      { "<leader>ff",  "<cmd>FzfLua files<cr>",                 desc = "Find files" },
      { "<leader>fr",  "<cmd>FzfLua resume<cr>",                desc = "Resume search" },
      { "<leader>fg",  "<cmd>FzfLua live_grep<cr>",             desc = "Find live grep" },
      { "<leader>fw",  "<cmd>FzfLua grep_cword<cr>",            desc = "Find word under cursor" },
      { "<leader>fc",  "<cmd>FzfLua commands<cr>",              desc = "Find commands" },
      { "<leader>fk",  "<cmd>FzfLua keymaps<cr>",               desc = "Find keymaps" },
      { "<leader>fh",  "<cmd>FzfLua help_tags<cr>",             desc = "Find help tags" },
      { "<leader>ft",  "<cmd>FzfLua colorschemes<cr>",          desc = "Find colorschemes" },

      { "<leader>gk",  "<cmd>FzfLua git_bcommits<cr>",          desc = "Current buffer git commits" },
      { "<leader>gb",  "<cmd>FzfLua git_branches<cr>",          desc = "Git branches" },
      { "<leader>gc",  "<cmd>FzfLua git_commits<cr>",           desc = "Git commits" },
      { "<leader>gf",  "<cmd>FzfLua git_files<cr>",             desc = "Git files" },
      { "<leader>gs",  "<cmd>FzfLua git_status<cr>",            desc = "Git status" },
    },
  },
}

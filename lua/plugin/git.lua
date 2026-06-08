return {
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      opts = {
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
          untracked = { text = "┆" },
        },
        signcolumn = true,
        current_line_blame = false,
        current_line_blame_opts = { delay = 300 },
        preview_config = { border = "rounded" },
      },
      keys = {
        { "<leader>gB", "<cmd>Gitsigns blame_line<cr>",    desc = "Blame line" },
        { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>",  desc = "Preview line" },
        { "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>",    desc = "Reset line" },
        { "[h",         "<cmd>Gitsigns nav_hunk prev<cr>", desc = "Previous hunk" },
        { "]h",         "<cmd>Gitsigns nav_hunk next<cr>", desc = "Next hunk" },
      }
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit" }
    }
  },
}

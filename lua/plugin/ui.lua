local header = [[
█████ █████ ██████████            ███
░░███ ░░███ ░░███░░░░███          ░░░
 ░░███ ███  ░███    ░░███ █████ █████ ████   █████████████
  ░░█████   ░███     ░███░░███ ░░███ ░░███  ░░███░░███░░███
   ███░███  ░███     ░███ ░███  ░███  ░███   ░███ ░███ ░███
  ███ ░░███ ░███     ███  ░░███ ███   ░███   ░███ ░███ ░███
 █████ █████ ██████████    ░░█████    █████ █████░███ █████
░░░░░ ░░░░░ ░░░░░░░░░░      ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░
]]

return {
  {
    "nvim-mini/mini.starter",
    opts = {
      evaluate_single = true,
      header = header,
      footer = "",
      items = {
        { name = "Files", action = function() require("fzf-lua").files() end,     section = "" },
        { name = "Grep",  action = function() require("fzf-lua").live_grep() end, section = "" },
        {
          name = "New File",
          action = function()
            vim.ui.input({ prompt = "New file name: " }, function(input)
              if not input or input == "" then
                return
              end

              vim.cmd("edit " .. input)
            end)
          end,
          section = ""
        },
        { name = "Sessions", action = function() require("mini.sessions").select() end, section = "" },
        { name = "Quit",     action = "q",                                              section = "" },
      },
    },
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl",  config = true },
  {
    "nvim-mini/mini.statusline",
    opts = {
      use_icons = false
    }
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end
  },
  { 'nvim-mini/mini.tabline',              version = "*", config = true }
}

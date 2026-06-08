local set_mark = function(id, path, desc)
  require("mini.files").set_bookmark(id, path, { desc = desc })
end
vim.api.nvim_create_autocmd("User", {
  pattern = "MiniFilesExplorerOpen",
  callback = function()
    set_mark("c", vim.fn.stdpath("config"), "Config")
    set_mark("w", vim.fn.getcwd(), "Working directory")
    set_mark("h", "~", "Home directory")
    set_mark("g", "~/Github", "GitHub Projects")
    set_mark("p", "~/Projects", "Projects")
  end,
})

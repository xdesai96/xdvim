vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.scrolloff = 10
vim.o.swapfile = false

vim.o.splitright = true
vim.o.splitbelow = true
vim.o.laststatus = 3
vim.o.showmode = false
vim.o.cmdheight = 0

vim.opt.fillchars = { eob = " " }

vim.o.undofile = true
vim.o.confirm = true
vim.o.breakindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.wrap = false

vim.o.clipboard = "unnamedplus"

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
})

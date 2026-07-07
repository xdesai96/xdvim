vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
vim.o.wildmode="list:longest,full"
vim.opt.wildmenu=true
vim.o.path = "**"
vim.opt.wildignore:append("**/node_modules/**,**/dist/**,**/.git/**")

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.scrolloff = 10
vim.o.cmdheight = 0
vim.o.laststatus = 3

vim.o.splitright = true
vim.o.splitbelow = true
vim.o.colorcolumn = "80"

vim.o.undofile = true
vim.o.confirm = true
vim.o.breakindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.swapfile = false
vim.opt.fillchars = { eob = " " }
vim.o.wrap = false
vim.o.clipboard = "unnamedplus"

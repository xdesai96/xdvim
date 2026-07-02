vim.keymap.set({ "n", "v" }, "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window" })
vim.keymap.set("n", "<leader>r", "<cmd>restart<CR>", { desc = "Restart" })
vim.keymap.set("n", "<leader>n", "<cmd>messages<CR>", { desc = "Last notifications" })
vim.keymap.set({ "n", "v" }, "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit all" })

vim.keymap.set("n", "<leader>tt", "<cmd>term<cr>", { desc = "Terminal command prompt (New Buffer)" })
vim.keymap.set("n", "<leader>tv", "<cmd>vert term<cr>", { desc = "Terminal command prompt (Vertical split)" })
vim.keymap.set("n", "<leader>th", "<cmd>hor term<cr>", { desc = "Terminal command prompt (Horizontal split)" })

vim.keymap.set("n", "<leader>x", "<cmd>noh<CR>", { desc = "Clear search highlight" })

vim.keymap.set("n", "<leader>d", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "*", "*zzzv")
vim.keymap.set("n", "#", "#zzzv")

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set({ "v", "n" }, "_", "^")
vim.keymap.set({ "v", "n" }, "+", "g_")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal split" })

vim.keymap.set("n", "<C-h>", "<cmd>vertical resize -3<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +3<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>resize +3<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>resize -3<CR>")

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })

vim.keymap.set("n", "<leader>cn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Line diagnostics" })

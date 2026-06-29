vim.keymap.set({ "n", "v" }, "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window" })
vim.keymap.set("n", "<leader>r", "<cmd>restart<CR>", { desc = "Restart" })
vim.keymap.set("n", "<leader>n", "<cmd>messages<CR>", { desc = "Last notifications" })
vim.keymap.set({ "n", "v" }, "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit all" })

vim.keymap.set("n", "<leader>tt", "<cmd>term<cr>", { desc = "Terminal command prompt (New Buffer)" })
vim.keymap.set("n", "<leader>tv", "<cmd>vert term<cr>", { desc = "Terminal command prompt (Vertical split)" })
vim.keymap.set("n", "<leader>th", "<cmd>hor term<cr>", { desc = "Terminal command prompt (Horizontal split)" })


vim.keymap.set("n", "<leader>x", "<cmd>noh<CR>", { desc = "Clear search highlight" })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard" })

vim.keymap.set("n", "<leader>d", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "*", "*zzzv")
vim.keymap.set("n", "#", "#zzzv")

vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set({ "v", "n" }, "_", "^")
vim.keymap.set({ "v", "n" }, "+", "g_")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Right window" })

vim.keymap.set("i", "<A-w>", "<C-o>w", { desc = "Move forward a word" })
vim.keymap.set("i", "<A-b>", "<C-o>b", { desc = "Move backward a word" })

vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal split" })

vim.keymap.set("n", "<A-S-h>", "<cmd>vertical resize -3<CR>")
vim.keymap.set("n", "<A-S-l>", "<cmd>vertical resize +3<CR>")
vim.keymap.set("n", "<A-S-k>", "<cmd>resize +3<CR>")
vim.keymap.set("n", "<A-S-j>", "<cmd>resize -3<CR>")

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })

vim.keymap.set("n", "<leader>cn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

vim.keymap.set("n", "<leader>fm", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format file" })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Line diagnostics" })

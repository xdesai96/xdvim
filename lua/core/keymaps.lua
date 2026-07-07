local map = function(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

map({ "n", "v" }, "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map({ "n", "v" }, "q", "<C-w><C-q>", { desc = "Close a window" })
map("n", "<leader>n", "<cmd>messages<CR>", { desc = "Last notifications" })
map("n", "<leader>d", "<cmd>bp|bd#<cr>", { desc = "Delete the current buffer" })

map("n", "<leader>y", function()
	local path = vim.api.nvim_buf_get_name(0)
	vim.fn.setreg("+", path)
	vim.notify("Copied: " .. path)
end, { desc = "Copy full path to the file" })

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "*", "*zz")
map("n", "#", "#zz")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

map({ "v", "n" }, "_", "^")
map({ "v", "n" }, "+", "g_")
map("n", "J", "mzJ`z")

map("n", "<Esc>", "<cmd>noh<CR><Esc>")

map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })

map("n", "<leader>cn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

map({ "n", "v" }, "]w", function()
	vim.diagnostic.jump({ count = 1 })
end, { desc = "Go to next diagnostic" })

map({ "n", "v" }, "[w", function()
	vim.diagnostic.jump({ count = -1 })
end, { desc = "Go to prev diagnostic" })

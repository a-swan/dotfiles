vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Open diagnostics
vim.keymap.set("n", "<leader>ee", "<cmd>lua vim.diagnostic.open_float()<CR>")

-- use system clipboard
-- Yoink character(s) to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Yoink line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Paste from clipboard
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

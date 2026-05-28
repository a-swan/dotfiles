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

-- Copilot
-- Accept copilot suggestion
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { replace_keycodes = false, expr = true })
-- Accept copilot line suggestion
vim.keymap.set("i", "<C-l>", '<Plug>(copilot-accept-line)')
-- Accept copilot word suggestion
vim.keymap.set("i", "<C-h>", '<Plug>(copilot-accept-word)')
-- Disable Copilot's default Tab mapping
vim.g.copilot_no_tab_map = true

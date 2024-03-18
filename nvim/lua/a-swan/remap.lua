vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ee", "<cmd>lua vim.diagnostic.show_line_diagnostics()<CR>")

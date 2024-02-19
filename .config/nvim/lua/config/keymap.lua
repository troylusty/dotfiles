-- Buffers
vim.keymap.set("n", "<leader>bd", "<cmd>:bd<cr>", { desc = "Delete (unload) open buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd>:bufdo! bd<cr>", { desc = "Delete (unload) all open buffers if saved" })
vim.keymap.set("n", "<leader>bn", "<cmd>:bn<cr>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>:bp<cr>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bh", "<cmd>:sp<cr>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>bv", "<cmd>:vs<cr>", { desc = "Vertical split" })

-- lua/custom/keymaps.lua

-- Keymaps de pestañas
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>tC", ":tabonly<CR>", { desc = "Closer another tabs" })
vim.keymap.set("n", "<Tab>", ":tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>", { desc = "Preview tab" })
vim.keymap.set("n", "<leader>te", ":tabnew | :edit ", { desc = "Crear/Editar en nueva pestaña" })

return {}

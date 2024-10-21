-- Keymaps are automatically loaded on the VeryLazy event aa
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- https://www.reddit.com/r/neovim/comments/petq61/neovim_060_y_not_yanking_line_but_to_end_of_line/
-- this changed in nvim 0.6 but I am still used to the old vim behavior
vim.cmd("nnoremap Y Y")

-- Map Alt+PgUp to switch to the previous buffer
vim.api.nvim_set_keymap("n", "<M-PageUp>", ":bprev<CR>", { noremap = true, silent = true })

-- Map Alt+PgDn to switch to the next buffer
vim.api.nvim_set_keymap("n", "<M-PageDown>", ":bnext<CR>", { noremap = true, silent = true })

-- Map Alt+Shift+PgUp to move the current buffer to the left
vim.api.nvim_set_keymap("n", "<M-S-PageUp>", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })

-- Map Alt+Shift+PgDn to move the current buffer to the right
vim.api.nvim_set_keymap("n", "<M-S-PageDown>", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })

-- Map :Gblame to :Git blame
vim.api.nvim_create_user_command("Gblame", "Git blame", {})

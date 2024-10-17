-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v", "o" }, "<leader>h", "^", { desc = "Move to line start" })
vim.keymap.set({ "n", "v", "o" }, "<leader>l", "$", { desc = "Move to line end" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Void delete" })

-- First, remove the default 's' binding for Flash in normal, visual, and operator-pending modes
--
vim.keymap.del("n", "s")
vim.keymap.del("x", "s")
vim.keymap.del("o", "s")
vim.keymap.del("n", "S")
vim.keymap.del("x", "S")
vim.keymap.del("o", "S")

-- Now, bind Flash to <Space>s
vim.keymap.set({ "n", "x", "o" }, "<leader>t", function()
  require("flash").jump()
end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, "<leader>T", function()
  require("flash").treesitter()
end, { desc = "Flash Treesitter" })

-- Create a function to handle the custom paste behavior
-- local function custom_paste()
--   vim.cmd("normal! p") -- Paste the contents of the unnamed register
--   vim.cmd("normal! gv") -- Reselect the last visual selection
--   vim.cmd("normal! y") -- Yank the currently selected text
-- end

-- Bind the visual mode `p` key to the custom paste function
vim.keymap.set("v", "p", "pgvy", { noremap = true, desc = "Paste in visual mode without overwriting register" })
-- vim.keymap.set({ "n", "x", "o" }, "<leader>T", function()
--   require("flash").jump()
-- end, { desc = "Flash" })

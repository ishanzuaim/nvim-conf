-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>w", function()
  vim.lsp.buf.code_action({
    apply = true,
    context = {
      only = { "source.removeUnused.ts" },
      diagnostics = {},
    },
  })
  LazyVim.format({ force = true })
end, { desc = "Format" })


vim.keymap.set("n", "<leader>e", function()
  if vim.bo.filetype == "netrw" then
    vim.cmd("Rex")  -- Close the netrw window
  else
    vim.cmd("Ex")  -- Open netrw using :Ex (Explore)
     vim.cmd("sil! /" .. vim.fn.expand("#:t"))  -- Start search for the current file name
  end
end, { desc = "Toggle Explorer" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- Scroll down and center
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- Scroll up and center

vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")

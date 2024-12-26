-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
---- Set a custom <esc> keymap only for 'netrw' filetype

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "netrw",
--   callback = function()
--     vim.keymap.set("n", "<esc>", function()
--     end, { desc = "Close netrw" })
--   end
-- })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.keymap.set("n", "<esc>", function()
      if vim.bo.filetype ~= "netrw" then
        vim.cmd("")  -- Close the netrw window
      else
        vim.cmd("Rex")  -- Close the netrw window
      end
    end, { desc = "somethign" })
  end
})


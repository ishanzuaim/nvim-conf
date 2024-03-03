return {
  "preservim/vimux",
  cmd = {
    "VimuxPromptCompany",
  },
  keys = {
    { "<leader>vp", "<cmd>VimuxPromptCommand<cr>", desc = "Run terminal command" },
    { "<leader>vl", "<cmd>VimuxRunLastCommand<cr>", desc = "Run last command" },
    { "<leader>vi", "<cmd>VimuxInspectRunner<cr>", desc = "Inspect terminal" },
  },
}

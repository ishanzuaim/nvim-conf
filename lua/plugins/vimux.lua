return {
  "preservim/vimux",
  cmd = {
    "VimuxPromptCompany",
  },
  keys = {
    { "<leader>vp", "<cmd>VimuxPromptCommand<cr>", desc = "Run terminal command" },
    { "<leader>vl", "<cmd>VimuxInterruptRunner<cr><cmd>VimuxRunLastCommand<cr>", desc = "Run last command" },
    { "<leader>vi", "<cmd>VimuxInspectRunner<cr>", desc = "Inspect terminal" },
    { "<leader>vr", "<cmd>VimuxInterruptRunner<cr>", desc = "Interrupt terminal" },
    {
      "<leader>vt",
      "<cmd>VimuxInterruptRunner<cr><cmd>:call VimuxRunCommand('npm test -- ' . bufname('%'))<cr>",
      desc = "Run test for current file",
    },
  },
}

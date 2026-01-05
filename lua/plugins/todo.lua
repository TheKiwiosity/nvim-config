return {
  "atiladefreitas/dooing",
  cmd = "Dooing",
  keys = {
    { "<leader>td", "<cmd>DooingLocal<cr>", desc = "Dooing Local" },
    { "<leader>tD", "<cmd>Dooing<cr>",      desc = "Dooing Global" },
  },
  opts = {
    keymaps = {
      toggle_window = "<leader>tD",
      open_project_todo = "<leader>td",
    }
  }
}

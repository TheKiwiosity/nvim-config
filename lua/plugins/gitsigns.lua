return {
  "lewis6991/gitsigns.nvim",
  priority = 60,
  config = function()
    require("gitsigns").setup()
    require("scrollbar.handlers.gitsigns").setup()
  end
}

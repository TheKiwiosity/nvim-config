return {
  "petertriho/nvim-scrollbar",
  -- v2 lands on main on 2026-11-16; drop this line after that
  branch = "refactor/v2",
  priority = 59,
  config = function()
    require("scrollbar").setup({
      providers = { gitsigns = true },
    })
  end
}

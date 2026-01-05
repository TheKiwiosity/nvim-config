return {
  'mbbill/undotree',
  cmd = "UndotreeToggle",
  opts = {},
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
  end
}

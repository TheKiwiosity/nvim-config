return {
  'mikesmithgh/kitty-scrollback.nvim',
  enabled = true,
  lazy = true,
  cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth', 'KittyScrollbackGenerateCommandLineEditing' },
  event = { 'User KittyScrollbackLaunch' },
  version = '^6.0.0', -- pin major version, include fixes and features that do not have breaking changes
  config = function()
    require('kitty-scrollback').setup({
      visual_selection_highlight_mode = 'reverse'
    })
  end,
}

return {
  "https://codeberg.org/andyg/leap.nvim",
  opts = function()
    vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
    vim.api.nvim_set_hl(0, 'LeapMatch', {
      fg = 'white',
      bold = true,
      nocombine = true,
    })
    -- Deprecated option. Try it without this setting first, you might find
    -- you don't even miss it.
    -- require('leap').opts.highlight_unlabeled_phase_one_targets = true
  end
}

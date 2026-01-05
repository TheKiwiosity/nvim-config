return {
  {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()

    require("kanagawa").setup({
      transparent = false,
      background = {
        dark = "wave",
        light = "lotus",
      }
    })
    -- vim.cmd([[colorscheme kanagawa]])
  end,
  },
  {

  "webhooked/kanso.nvim",
  lazy = false,
  priority = 1000,
  config = function()

    require("kanso").setup({
      transparent = not vim.g.neovide,
      background = {
        dark = "zen",
        light = "pearl",
      }
    })
    -- vim.cmd([[colorscheme kanso]])
  end,
  },

  {

  "nyoom-engineering/oxocarbon.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme oxocarbon]])
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  end,
  -- Add in any other configuration;
  --   event = foo,
  --   config = bar
  --   end,
  }
}

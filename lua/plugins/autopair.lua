return {
  -- {
  --   'altermo/ultimate-autopair.nvim',
  --   event={'InsertEnter','CmdlineEnter'},
  --   branch='v0.6', --recommended as each new version will have breaking changes
  --   opts={
  --
  --   },
  -- },
  {
    'windwp/nvim-autopairs', event = "InsertEnter", config = true
  },
  {
    "kylechui/nvim-surround",
    version = "^4.0.0",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
      vim.g.nvim_surround_no_visual_mappings = true
      vim.keymap.set("x", "<leader>s", "<Plug>(nvim-surround-visual)", {
          desc = "Add a surrounding pair around a visual selection",
      })
      vim.keymap.set("x", "<leader>S", "<Plug>(nvim-surround-visual-line)", {
          desc = "Add a surrounding pair around a visual selection, on new lines",
      })
      -- See `:h nvim-surround.keymaps`
      -- vim.keymap.set("n", "<leader>s", "<Plug>(nvim-surround-normal)", {
      --     desc = "Add a surrounding pair around a motion (normal mode)",
      -- })
      -- vim.keymap.set("n", "<leader>sd", "<Plug>(nvim-surround-delete)", {
      --     desc = "Delete a surrounding pair",
      -- })
      -- vim.keymap.set("n", "<leader>sr", "<Plug>(nvim-surround-change)", {
      --     desc = "Change a surrounding pair",
      -- })

    end
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "windwp/nvim-autopairs" },
    lazy = false,
    opts = { }
  },
}

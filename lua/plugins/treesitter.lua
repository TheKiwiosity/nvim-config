return {
  { "nvim-treesitter/nvim-treesitter-context" },
  {
    -- master branch is archived and breaks on nvim 0.12; main needs the tree-sitter CLI
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "css", "go", "html", "javascript", "json", "make", "prisma", "python",
        "terraform", "tsx", "typescript", "xml", "yaml",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          if pcall(vim.treesitter.start, args.buf) then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end
  },
}

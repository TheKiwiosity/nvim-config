return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      extensions = {
        project = {
          base_dirs = {
            '~/dev/'
          },
          hidden_files = true,
          sync_with_nvim_tree = true
        }
      },
      defaults = {
        winblend = 0,
      },
    },
    config = function()
      local builtin = require('telescope.builtin')
      local action_state = require('telescope.actions.state')
      local actions = require('telescope.actions')

      Buffer_searcher = function()
        builtin.buffers {
          sort_mru = true,
          ignore_current_buffer = true,
          show_all_buffers = false,
          attach_mappings = function(prompt_bufnr, map)
            local refresh_buffer_searcher = function()
              actions.close(prompt_bufnr)
              vim.schedule(Buffer_searcher)
            end

            local delete_buf = function()
              local selection = action_state.get_selected_entry()
              vim.api.nvim_buf_delete(selection.bufnr, { force = true })
              refresh_buffer_searcher()
            end

            local delete_multiple_buf = function()
              local picker = action_state.get_current_picker(prompt_bufnr)
              local selection = picker:get_multi_selection()
              for _, entry in ipairs(selection) do
                vim.api.nvim_buf_delete(entry.bufnr, { force = true })
              end
              refresh_buffer_searcher()
            end

            map('n', 'dd', delete_buf)
            map('n', '<C-d>', delete_multiple_buf)
            map('i', '<C-d>', delete_multiple_buf)

            return true
          end
        }
      end

      vim.keymap.set('n', '<leader>fb', Buffer_searcher, {})
    end
  },
  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    keys = {
      { '<leader>fp', '<cmd>Telescope project<cr>' },
    },
    config = function()
      require 'telescope'.load_extension('project')
    end
  }
}

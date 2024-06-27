return {
  {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      sorting_strategy = "ascending",
      layout_strategy = "flex",
      layout_config = {
        horizontal = { preview_cutoff = 80, preview_width = 0.55 },
        vertical = { mirror = true, preview_cutoff = 25 },
        prompt_position = "top",
        width = 0.87,
        height = 0.80,
      },
    },
  },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set ( 'n' , '<C-p>', builtin.find_files, {})
    vim.keymap.set ( 'n' , '<leader>fg', builtin.live_grep, {})
  end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
              }
            }
          }
        })
        require("telescope").load_extension("ui-select")
    end
  }
}

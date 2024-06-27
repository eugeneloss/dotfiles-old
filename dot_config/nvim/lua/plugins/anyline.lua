return {
  'huy-hng/anyline.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = 'VeryLazy',
  config = function()
    require("anyline").setup()
  end
}

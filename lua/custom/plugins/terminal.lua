return {
  'akinsho/toggleterm.nvim',
  version = "*",
  -- config = true,
  direction = "vertical",
  keys = {
    { '<C-t>', '<Cmd>ToggleTerm<CR>' },
  },
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      direction = "float",
    }
  end,

}

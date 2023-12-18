-- vim.keymap.set('n', '<leader>nb', require("buffer_browser").next, { desc = "Next [B]uffer []]" })
-- vim.keymap.set('n', '<leader>np', require("buffer_browser").prev, { desc = "Previous [B]uffer [[]" })
--
-- return {
--   'nvim-lua/plenary.nvim',
--   'ThePrimeagen/harpoon',
--   require('harpoon').setup({
--   })
-- }
return {
  "ghillb/cybu.nvim",
  branch = "main",                                                           -- timely updates
  -- branch = "v1.x", -- won't receive breaking changes
  dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" }, -- optional for icon support
  config = function()
    local ok, cybu = pcall(require, "cybu")
    if not ok then
      return
    end
    cybu.setup({
      position = {
        relative_to = "editor", -- win, editor, cursor
        anchor = "topcenter",   -- topleft, topcenter, topright, centerleft, center, centerright, bottomleft, bottomcenter, bottomright
        vertical_offset = 3,    -- vertical offset from anchor in lines
        horizontal_offset = 0,  -- vertical offset from anchor in columns
        max_win_height = 7,     -- height of cybu window in lines
        max_win_width = 0.5,    -- integer for absolute in columns
        -- float for relative to win/editor width
      },
      behavior = { -- set behavior for different modes
        mode = {
          last_used = {
            switch = "on_close", -- immediate, on_close
            view = "paging",     -- paging, rolling
          },
        },
      },
      display_time = 700, -- time the cybu window is displayed
      exclude = {         -- filetypes, cybu will not be active
        "neo-tree",
        "fugitive",
        "qf",
      },
    })
    vim.keymap.set("n", "<F8>", "<Plug>(CybuPrev)")
    vim.keymap.set("n", "<F9>", "<Plug>(CybuNext)")
    vim.keymap.set({ "n", "v" }, "<C-S-Tab>", "<plug>(CybuLastusedPrev)")
    vim.keymap.set({ "n", "v" }, "<C-Tab>", "<plug>(CybuLastusedNext)")
    --       vim.keymap.set({ "n", "v" }, "<C-S-Tab>", "<plug>(CybuLastusedPrev)")
    --   vim.keymap.set({ "n", "v" }, "<C-Tab>", "<plug>(CybuLastusedNext)")
  end,
}

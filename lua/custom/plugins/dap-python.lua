return {
  -- "mfussenegger/nvim-dap-python",
  -- config = function()
  -- require("nvim-dap-python").setup {}
  -- end,

  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function(_, opts)
    -- require("dap-python").setup("python", {})
    -- require("dap-python").setup('~/home/amit/anaconda3/envs/nlp/bin/python3')
    require("dap-python").setup('/home/amit/anaconda3/envs/nlp/bin/python3')
  end,

}

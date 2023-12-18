return {
	"pappasam/nvim-repl",
	init = function()
		vim.g["repl_filetype_commands"] = {
			javascript = "node",
			python = "ipython --no-autoindent"
		}
		vim.g["repl_split"] = "right"
	end,
	keys = {
		{ "<leader>rt", "<cmd>ReplToggle<cr>",  desc = "Toggle nvim-repl" },
		{ "<leader>rc", "<cmd>ReplRunCell<cr>", desc = "nvim-repl run cell" },
	},
	config = {
		repl_split = 'right'
	},
}

return {
	"tpope/vim-fugitive",
	keys = function()
		return {
			{ "<leader>dv", "<cmd>Gvdiffsplit!<cr>" },
			{ "<leader>dl", "<cmd>diffget //2<cr>" },
			{ "<leader>dr", "<cmd>diffget //3<cr>" },
		}
	end,
}

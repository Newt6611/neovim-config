return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",         -- required
		"sindrets/diffview.nvim",        -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
		"ibhagwan/fzf-lua",              -- optional
	},
	config = true,
	keys = function()
		return {
			{ "<leader>gs", "<cmd>Neogit<CR>" },
			{ "<leader>gc", "<cmd>Neogit commit<CR>" },
			{ "<leader>gp", "<cmd>Neogit pull<CR>" },
			{ "<leader>gP", "<cmd>Neogit push<CR>" },
			{ "<leader>gf", "<cmd>Neogit fetch<CR>" },
			{ "<leader>dv", "<cmd>DiffviewOpen<CR>" },
		}
	end,
}

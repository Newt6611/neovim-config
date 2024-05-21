return {
	"nvim-neo-tree/neo-tree.nvim",

	opts = {
		close_if_last_window = true,
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
				hijack_netrw_behavior = "disabled"
			},
		},
		window = {
			position = "right",
			width = 50,
		},
		actions = {
			open_file = {
				quit_on_open = true,
			}
		},
	},
	keys = {
		{
			"<C-n>",
			"<cmd>Neotree toggle<cr>",
		},
	}
}

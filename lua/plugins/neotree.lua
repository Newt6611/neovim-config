return {
    "nvim-neo-tree/neo-tree.nvim",

    opts = {
		close_if_last_window = true,
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_hidden = false,
            },
        },
        window = {
          position = "right",
          width = 50,
        }
    },
    keys = {
        {
            "<C-n>",
            "<cmd>Neotree toggle<cr>",
        },
    },
}

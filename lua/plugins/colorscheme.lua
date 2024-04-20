return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                term_colors = true,
                -- color_overrides = {
                --     mocha = {
                --         base = "#000000",
                --         mantle = "#000000",
                --         crust = "#000000",
                --     },
                -- },
            })
        end,
    }
}

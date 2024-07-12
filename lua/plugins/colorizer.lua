return {
    "norcalli/nvim-colorizer.lua",
    config = function()
		local lspconfig = require('lspconfig')
		lspconfig.aiken.setup({})
    end,
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require'lspconfig'.aiken.setup({})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.ak",
	callback = function()
		vim.lsp.buf.format({async = false})
	end
})

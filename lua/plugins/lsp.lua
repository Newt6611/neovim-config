return {
	{
		"neovim/nvim-lspconfig",
		init = function()
			local keys = require("lazyvim.plugins.lsp.keymaps").get()

			keys[#keys + 1] = {
				"rn",
				function()
					vim.lsp.buf.rename()
				end,
			}
			keys[#keys + 1] = {
				"<C-m>",
				function()
					vim.lsp.buf.code_action()
				end,
			}
			keys[#keys + 1] = {
				"<leader>f",
				function()
					vim.lsp.buf.implementation()
				end,
			}

			require'lspconfig'.aiken.setup{}
		end,
		opts = {
			servers = {
			},
		},
	}
}

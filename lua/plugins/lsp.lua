return {
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
    end,
    opts = {
        servers = {
            omnisharp = {
                handlers = {
                    ["textDocument/definition"] = function(...)
                        return require("omnisharp_extended").handler(...)
                    end,
                },
                keys = {
                    {
                        "gd",
                        function()
                            require("omnisharp_extended").telescope_lsp_definitions()
                        end,
                        desc = "Goto Definition",
                    },
                },
                enable_roslyn_analyzers = false,
                organize_imports_on_format = true,
                enable_import_completion = true,
            },
        },
    },
}

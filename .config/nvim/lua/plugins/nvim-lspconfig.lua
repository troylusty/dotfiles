return {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "bashls", "html", "cssls", "pylsp", "typst_lsp", "rust_analyzer", "marksman", "gopls" } -- needs nodejs npm rust-analyzer
        })

        local on_attach = function(_, _)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
            vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        end

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        require("lspconfig").lua_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").bashls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").html.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").cssls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
        
        require("lspconfig").pylsp.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").typst_lsp.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").rust_analyzer.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").marksman.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require("lspconfig").gopls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }

    end,
}

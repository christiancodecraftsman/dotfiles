return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Assuming you use mason to manage your LSPs
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls" },
        })

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    telemetry = { enable = false },
                    diagnostics = {
                        globals = { "vim" },
                    },
                    completion = {
                        callSnippet = "Replace", -- Better snippet behavior
                    },
                },
            }
        })

        vim.lsp.enable("lua_ls")
    end
}

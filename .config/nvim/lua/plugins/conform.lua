return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, -- Lazy-load right before saving a file
    cmd = { "ConformInfo" },
    keys = {
        {
            -- Manual format keybind (Leader + f)
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        -- Define your formatters per filetype
        formatters_by_ft = {
            lua = { "stylua" },
        },
        -- Format-on-save configuration
        format_on_save = {
            timeout_ms = 500,
            -- Use LSP as a fallback if no specific formatter is defined
            lsp_fallback = true,
        },
    },
}

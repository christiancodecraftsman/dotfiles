-- Automatically show diagnostics when the cursor holds (pauses) on a line
-- opens after hover for opt.updatetime milliseconds
vim.api.nvim_create_autocmd({ "CursorHold" }, {
    group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
    end
})

-- Load keymaps for Rust only when a Rust files is open
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("rust_lsp_attach", { clear = true }),
    callback = function(args)
        -- Get the client that just attached
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local bufnr = args.buf

        -- Only run this if the attached server is rust-analyzer
        if client and (client.name == "rust_analyzer" or client.name == "rust-analyzer" or client.name == "rustaceanvim") then
            vim.notify("Rustaceanvim on_attach is running!", vim.log.levels.INFO)

            local map = function(keys, func, desc)
                vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
            end

            -- Map all your Rust commands natively
            map("<leader>rr", function() vim.cmd.RustLsp('runnables') end, "Run Targets")
            map("<leader>rd", function() vim.cmd.RustLsp('debuggables') end, "Debug Targets")
            map("<leader>rm", function() vim.cmd.RustLsp('expandMacro') end, "Expand Macro")
            map("<leader>re", function() vim.cmd.RustLsp('explainError') end, "Explain Error")
            map("<leader>rc", function() vim.cmd.RustLsp('openCargo') end, "Open Cargo.toml")
            map("K", function() vim.cmd.RustLsp({ 'hover', 'actions' }) end, "Hover Actions")

            vim.keymap.set({ "n", "v" }, "<leader>ca", function() vim.cmd.RustLsp('codeAction') end,
                { buffer = bufnr, desc = "Rust Code Actions" })

            -- Add the which-key group right when the LSP attaches
            local ok, wk = pcall(require, "which-key")
            if ok then
                wk.add({
                    { "<leader>r", group = "Rust", icon = "🦀", buffer = bufnr },
                })
            end
        end
    end,
})

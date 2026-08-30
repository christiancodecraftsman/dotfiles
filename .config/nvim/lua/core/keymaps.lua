local keymap = vim.keymap.set

-- Show the error on the current line in a floating window
keymap('n', 'gl', vim.diagnostic.open_float, { desc = "Open Float" })

-- Open a panel at the bottom showing all errors in the current file
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Diagnostic List" })

-- Jump to the next or previous diagnostic in the file
keymap('n', ']d', vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
keymap('n', '[d', vim.diagnostic.goto_next, { desc = "Prev Diagnostic" })

-- Jump to the next or previous error in the file
keymap('n', ']e', function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Next Error" })
keymap('n', '[e', function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Prev Error" })

return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets', -- Provides VSCode-like snippets
    version = '*',                                 -- Download pre-built binaries

    opts = {
        keymap = { preset = 'default' },

        -- Sources to fetch autocomplete suggestions from
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    },
}

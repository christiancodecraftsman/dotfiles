-- Set the leader key (often used for custom shortcuts)
vim.g.mapleader = " "

local opt = vim.opt

-- Indentation
opt.tabstop = 4        -- Number of spaces a <Tab> counts for
opt.shiftwidth = 4     -- Size of an indent
opt.expandtab = true   -- Convert tabs to spaces
opt.smartindent = true -- Insert indents automatically

-- Search
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true  -- Override ignorecase if search contains uppercase
opt.incsearch = true  -- Show search matches as you type
opt.hlsearch = false  -- Clear highlights after search is complete

-- UI & Display
opt.number = true         -- Show absolute line number on current line
opt.relativenumber = true -- Show relative line numbers on other lines
opt.wrap = false          -- Disable line wrapping
opt.scrolloff = 8         -- Keep 8 lines above/below the cursor when scrolling
opt.signcolumn = "yes"    -- Always show the sign column (prevents text shifting)
opt.termguicolors = true  -- Enable 24-bit RGB colors

-- System & Behavior
opt.clipboard = "unnamedplus" -- Sync Neovim clipboard with system clipboard
opt.updatetime = 50           -- Decrease update time for faster completion
opt.undofile = true           -- Persist undo history even after closing files

opt.mouse = ""                -- Disable mouse

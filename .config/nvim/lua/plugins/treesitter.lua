return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  main = "nvim-treesitter.config",
  opts = {
	  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "rust" },
	  sync_install = false,
	  auto_install = true,
	  highlight = { enable = true },
  },
}

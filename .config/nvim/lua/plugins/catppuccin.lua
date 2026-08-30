<<<<<<< HEAD
return {
	"catppuccin/nvim", 
	name = "catppuccin", 
	priority = 1000, 
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			auto_integrations = true,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
=======
return { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
	require("catppuccin").setup({
		auto_integrations = true,
	})
end,}
>>>>>>> 51faf75d9439b3cb738f62a0270a157a6227d52d

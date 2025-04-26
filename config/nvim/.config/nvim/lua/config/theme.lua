return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "macchiato",
            integrations = {
                treesitter = true,
                neotree = true,
            },
		},
		config = function(_, opts)
            require("catppuccin").setup(opts)
			vim.cmd.colorscheme "catppuccin"
		end
	}
}

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "macchiato",
            integrations = {
                neotree = true,
                telescope = true,
                treesitter = true,
            },
		},
		config = function(_, opts)
            require("catppuccin").setup(opts)
			vim.cmd.colorscheme "catppuccin"
		end
	},
}

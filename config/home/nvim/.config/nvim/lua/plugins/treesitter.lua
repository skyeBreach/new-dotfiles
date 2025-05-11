return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
        opts_extend = { "ensure_installed" },
        opts = {
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "c",
                "vim",
                "vimdoc",
                "elixir",
                "javascript",
                "html",
                "python",
                "typescript",
            },
            sync_install = false,
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
            rainbow = {
                enable = true,
                disable = { "html" },
                extended_mode = false,
                max_file_lines = nil,
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}

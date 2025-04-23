return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                theme = "catppuccin",
            },
            extensions = {
                "mason",
                "neo-tree",
                "toggleterm"
            }
        },
        config = function(_, opts)
            require("lualine").setup(opts)
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "saifulapm/neotree-file-nesting-config",
        },
        lazy = false,
        opts = {
            hide_root_node = true,
            retain_hidden_root_indent = true,
            filesystem = {
                filtered_items = {
                    visible = false,
                    show_hidden_count = false,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false,
                    hide_by_name = {
                        ".git",
                    },
                },
            },
            default_component_configs = {
                indent = {
                    with_expanders = true,
                    expander_collapsed = "",
                    expander_expanded = "",
                },
            },
        },
        config = function(_, opts)
            opts.nesting_rules = require("neotree-file-nesting-config").nesting_rules
            require("neo-tree").setup(opts)
        end,
    },
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts)
            require("notify").setup(opts)
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        opts = {
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.3
                end
            end,
            open_mapping = [[<F7>]],
            shading_factor = -10,
            direction = "vertical",
        },
        config = function(_, opts)
            require("toggleterm").setup(opts)
        end,
    },
}

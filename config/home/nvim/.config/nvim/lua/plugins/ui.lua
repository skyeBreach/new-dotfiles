
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
        "nvim-tree/nvim-web-devicons",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {},
        config = function(_, opts)
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

            local log = require('utils.log')


            local devicons = require('nvim-web-devicons')

            function get_ext(name)

                if name:find("%.local") and (not name:find"^%.local$") then
                    log:write('Found meta-extension "local", for file '.. name )
                    return name:gsub("%.local", "")
                end

                return name:match "^.*%.(.*)$" or ""
            end

            local get_icon = devicons.get_icon
            devicons.get_icon = function(name, ext, opts)
                return get_icon(name, ext or get_ext(name), opts)
            end

            local get_icon_colors = devicons.get_icon_colors
            devicons.get_icon_colors = function(name, ext, opts)
                return get_icon_colors(name, ext or get_ext(name), opts)
            end

            devicons.setup()

            opts.nesting_rules = {}

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
}

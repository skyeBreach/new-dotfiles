return {
    -- LSP for Cargo.toml
    {
        "Saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        opts = {
            completion = {
                crates = {
                    enabled = true,
                },
            },
            lsp = {
                enabled = true,
                actions = true,
                completion = true,
                hover = true,
            },
        },
        config = function(_, opts)
            require('crates').setup(opts)
        end,
    },

    --
    {
        "nvim-treesitter/nvim-treesitter",
        opts = { ensure_installed = { "rust", "ron" } },
    },

    --
    {
        "williamboman/mason.nvim",
        ensure_installed = {
            "codelldb",
        },
    },

    --
    {
        "mrcjkb/rustaceanvim",
        version = '^6',
        -- lazy = false,
        ft = { "rust" },
        opts = {
            server = {
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<leader>cR", function()
                        vim.cmd.RustLsp("codeAction")
                    end, { desc = "Code Action", buffer = bufnr })
                    vim.keymap.set("n", "<leader>dr", function()
                        vim.cmd.RustLsp("debuggables")
                    end, { desc = "Rust Debuggables", buffer = bufnr })
                end,
            },
        },
        config = function(_, opts)

        end,
    },
}

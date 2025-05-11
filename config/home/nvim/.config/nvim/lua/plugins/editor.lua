return {
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        version = false,
        cmd = "Telescope",
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        opts = {

        },
        config = function(_, opts)
            require("telescope").setup(opts)

            -- set keymaps
            local keymap = vim.keymap

            keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
            keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
            keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
            keymap.set("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
            keymap.set("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
        end,
    },

    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" })
        end,
    },

    -- Highlight, list and search todo comments in your projects
    {
        "folke/todo-comments.nvim",
        cmd = { "TodoTrouble", "TodoTelescope" },
        event = { "BufReadPre", "BufNewFile" },
        opts = {},
    }
}

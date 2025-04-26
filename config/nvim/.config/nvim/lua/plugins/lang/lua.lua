return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "lua" }
        },
    },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
            },
        },
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
            },
        },
    },
}

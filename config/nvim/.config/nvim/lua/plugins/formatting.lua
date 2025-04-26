return {
    {
        "stevearc/conform.nvim",
        dependencies = { "mason.nvim" },
        event = { "BufReadPre", "BufNewFile" },
        opts_extend = {
            "formatters_by_ft",
        },
        opts = {
            default_format_opts = {
                timeout_ms = 3000,
                async = false, -- not recommended to change
                quiet = false, -- not recommended to change
                lsp_format = "fallback", -- not recommended to change
            },
        },
        config = function(_, opts)
            require("conform").setup(opts)
        end,
    },
}

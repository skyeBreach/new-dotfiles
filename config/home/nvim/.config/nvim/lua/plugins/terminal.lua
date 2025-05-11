return {
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

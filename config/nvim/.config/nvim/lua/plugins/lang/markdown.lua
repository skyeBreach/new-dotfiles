return {
    -- Automatic Table of Contents Generation and Updating
    {
        "hedyhli/markdown-toc.nvim",
        ft = "markdown",  -- Lazy load on markdown filetype
        cmd = { "Mtoc" }, -- Or, lazy load on "Mtoc" command
        opts = {
            auto_update = true,
            fences = {
                enabled = true,
                start_text = "toc-start",
                end_text = "toc-end"
            },
            headings = {
                before_toc = false,
            },
            toc_list = {
                markers = '-',
            },
        },
        config = function(_, opts)
            require('mtoc').setup(opts)
        end,
    }
}

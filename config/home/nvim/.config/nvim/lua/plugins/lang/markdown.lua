local M = {}

M.filetypes = { "markdown" }

return {
    -- Mason LSP
    {
        "williamboman/mason.nvim",
        opts = { ensure_installed = { "markdownlint-cli2", "markdown-toc" } },
    },
    -- Browser-Based Markdown Preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        init = function()
            --
            local function load_then_exec(cmd)
                return function()
                    vim.cmd.delcommand(cmd)
                    require('lazy').load({ plugins = { 'markdown-preview.nvim' } })
                    vim.api.nvim_exec_autocmds('BufEnter', {}) -- commands appear only after BufEnter
                    vim.cmd(cmd)
                end
            end

            --
            for _, cmd in pairs({ 'MarkdownPreview', 'MarkdownPreviewStop', 'MarkdownPreviewToggle' }) do
                vim.api.nvim_create_user_command(cmd, load_then_exec(cmd), {})
            end
        end,
        build = function()
            -- Install plugin without npm, yarn, etc
            vim.fn["mkdp#util#install"]()
        end,
        config = function()
            vim.g.mkdp_filetypes = M.filetypes
            vim.cmd([[
                function OpenMarkdownPreview(url)
                    execute "silent ! firefox " . a:url
                endfunction
            ]])
            vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
            vim.g.mkdp_open_ip = "127.0.0.1"
            vim.g.mkdb_auto_close = 0
        end,
    },
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
                indent_size = 4,
            },
        },
        config = function(_, opts)
            require('mtoc').setup(opts)
        end,
    },
}

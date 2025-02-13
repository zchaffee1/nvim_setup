return
{

    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function ()
                vim.api.nvim_set_keymap('n', '<leader>md', '<Plug>MarkdownPreview', {noremap = true, silent = true})
    end
}



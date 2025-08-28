return
{
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && yarn install",
    config = function ()
      vim.g.mkdp_browser = "zen-browser"
      vim.api.nvim_set_keymap('n', '<leader>md', '<Plug>MarkdownPreview', {noremap = true, silent = true})
    end
  }



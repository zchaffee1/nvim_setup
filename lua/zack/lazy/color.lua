return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavor = "macchiato", -- Set the flavor to "macchiato"
        -- Customize other options for the Macchiato flavor if desired
        -- For example:
        -- background = { light = "latte", dark = "macchiato" },
        -- transparent_background = false,
        -- term_colors = false,
        -- styles = {
        --   comments = { "italic" },
        --   conditionals = { "italic" },
        --   loops = {},
        --   functions = {},
        --   keywords = {},
        --   strings = {},
        --   variables = {},
        --   numbers = {},
        --   booleans = {},
        --   properties = {},
        --   types = {},
        --   operators = {},
        -- },
        -- integrations = {
        --   treesitter = true,
        --   native_lsp = {
        --     enabled = true,
        --     virtual_text = {
        --       errors = { "italic" },
        --       hints = { "italic" },
        --       warnings = { "italic" },
        --       information = { "italic" },
        --     },
        --     underlines = {
        --       errors = { "underline" },
        --       hints = { "underline" },
        --       warnings = { "underline" },
        --       information = { "underline" },
        --     },
        --   },
        -- },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

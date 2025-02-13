return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "VeryLazy" },  -- Load after startup
    config = function()
        -- Reset any existing treesitter configurations
        vim.treesitter.highlighter.hl_map = {}
        
        local function safely_require(module_name)
            local ok, module = pcall(require, module_name)
            if not ok then
                return nil
            end
            return module
        end

        local configs = safely_require("nvim-treesitter.configs")
        if not configs then return end

        configs.setup({
            ensure_installed = {},  -- Start with empty list
            sync_install = true,    -- Install synchronously
            auto_install = false,   -- Disable auto install temporarily
            highlight = {
                enable = true,
                disable = function(_, buf)
                    local max_filesize = 100 * 1024
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                    return false
                end,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = false  -- Disable indent temporarily
            },
        })
    end
}

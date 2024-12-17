return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                "bash",
                "html",
                "markdown",
                "markdown_inline",
                "vimdoc",
                "javascript",
                "typescript",
                "lua",
                "json",
                "regex",
                "tsx",
                "yaml"
            },
            sync_install = false,
            auto_install = true,
            indent = {
                enable = true
            },
            hightlight = {
                enable = true,
            }
        })
    end
}

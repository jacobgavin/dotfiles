return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        require("telescope").setup {
            extensions = {
                fzf = {}
            }
        }

        require("telescope").load_extension("fzf")

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>gI', builtin.lsp_implementations, {})

        vim.keymap.set('n', "<leader>en", function()
            require("telescope.builtin").find_files {
                cwd = vim.fn.stdpath("config")
            }
        end)
    end,
}

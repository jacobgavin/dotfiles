return {
    "mfussenegger/nvim-lint",
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            markdown = { "markdownlint" },
            typescript = { "eslint_d" },
            typescriptreact = { "eslint_d" },
        }
    end,
}

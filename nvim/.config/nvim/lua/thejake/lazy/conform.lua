return {
    "stevearc/conform.nvim",
    opts = {
        notify_on_error = false,
        format_on_save = function()
            return {
                timeout_ms = 500,
                lsp_fallback = true,
            }
        end,
    },
    formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "dprint" },
        javascriptreact = { "dprint" },
        typescript = { "dprint" },
        typescriptreact = { "dprint" },
    },
}

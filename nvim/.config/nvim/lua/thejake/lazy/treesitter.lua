return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { "vimdoc", "javascript", "typescript", "lua", "json" },
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

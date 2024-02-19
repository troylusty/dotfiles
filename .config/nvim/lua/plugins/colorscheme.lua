return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    dependencies = {"xiyaowong/transparent.nvim"},
    config = function()
    vim.cmd([[colorscheme catppuccin]])
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Removed as added transparent.nvim plugin
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.g.transparent_enabled = true 
    end,
}

return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/playground" },
    config = function()
        ensure_installed = { "lua", "python", "rust", "bash", "html", "css", "javascript", "toml", "yaml", "markdown", "go" }
        sync_install = false
        auto_install = true
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        }
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    end,
}

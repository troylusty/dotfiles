return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons", },
    config = function()
        require("telescope").setup{
            defaults = {
                mappings = {
                    i = {
                        ["<C-h>"] = "which_key"
                    }
                }
            },
            pickers = {
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    }
                },
            }

            require('telescope').load_extension('fzf')

            vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
            vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
            vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
            vim.keymap.set("n", "<leader>fr", require("telescope.builtin").oldfiles, { desc = "Find recently opened files" })
            vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find existing buffers" })
        end,
}

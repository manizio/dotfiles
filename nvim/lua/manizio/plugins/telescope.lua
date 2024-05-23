return {
    'nvim-telescope/telescope.nvim', tag = '0.1.7',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },

    config = function()
        local telescope = require("telescope")
        telescope.load_extension("fzf")

        local keymap = vim.keymap
        local builtin = require('telescope.builtin')
        keymap.set('n', '<leader>pf', builtin.find_files, {})
        keymap.set('n', '<C-p>', builtin.git_files, {})
        keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}

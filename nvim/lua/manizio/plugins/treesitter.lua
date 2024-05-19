return {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },

            auto_install = { enable = true },

            autotag = {
                enable = true
            },

            ensure_installed = {
                "c",
                "lua",
                "javascript",
                "typescript",
                "vim",
                "vimdoc",
                "query"
            }
        })
    end,
}

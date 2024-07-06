return {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        local autotag = require("nvim-ts-autotag")

        treesitter.setup({
            highlight = {
                enable = true,
            },

            auto_install = { enable = true },

            ensure_installed = {
                "c",
                "lua",
                "javascript",
                "typescript",
                "vim",
                "vimdoc",
                "query"
            },

        })
    end,
}

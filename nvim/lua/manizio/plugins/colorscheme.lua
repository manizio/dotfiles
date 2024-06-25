return {
    'catppuccin/nvim',
    priority = 1000,
    name = 'catppuccin',
    as = 'catppuccin',
    opts = {
        transparent_background = true,
    },
    config = function (_, opts)
        require("catppuccin").setup(opts)
        vim.cmd('colorscheme catppuccin')

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "none" })
        vim.api.nvim_set_hl(0, "LineNr", { fg = "none" })
        vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "none" })
    end
}

return {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    as = 'kanagawa',
    config = function ()
        vim.cmd('colorscheme kanagawa')

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "none" })
        vim.api.nvim_set_hl(0, "LineNr", { fg = "none" })
        vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "none" })
    end
}

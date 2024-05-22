return {
    'tpope/vim-fugitive',
    config = function()
        local keymap = vim.keymap

        keymap.set("n", "<leader>gs", vim.cmd.Git)
        keymap.set("n", "<leader>gp", vim.cmd.Git('push'))
    end
}

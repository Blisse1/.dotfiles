-- no further config plugins
return {
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>gs", "<CMD>Git<CR>", desc = "Vim Fugitive" },
        },
    },
    {
        "mbbill/undotree",
        keys = {
            {"<leader>u", "<cmd>UndotreeToggle<cr>", desc = "UndoTree"}
        }
    },
    { "tpope/vim-commentary" },
    {
        "kana/vim-textobj-entire",
        dependencies = { "kana/vim-textobj-user" },
    },
}

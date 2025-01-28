return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    --- it has to load before anything else, 
    --- otherwise netrw will load first
    lazy = false,
    priority = 1000,
    opts = {
        keymaps = {
            ["g?"] = false,
            ["<CR>"] = "actions.select",
            ["<C-s>"] = false,
            ["<C-h>"] = false,
            ["<C-t>"] = false,
            ["<C-p>"] = false,
            ["<C-c>"] = false,
            ["<C-l>"] = false,
            ["-"] = false,
            ["_"] = false,
            ["`"] = false,
            ["~"] = false,
            ["gs"] = false,
            ["gx"] = false,
            ["g."] = false,
            ["g\\"] = false,
        },
        view_options = {
            -- Show files and directories that start with "."
            show_hidden = true,
        },
    },
    keys = {{ "<leader>pv", "<cmd>Oil<cr>" }},
    -- Optional dependencies
    dependencies = {
        { "echasnovski/mini.icons", opts = {} },
    },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}

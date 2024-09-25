-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('ThePrimeagen/harpoon')

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Recommended, not required.
    -- If you are using Packer
    use "folke/tokyonight.nvim"

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use ('mbbill/undotree')

    use ('tpope/vim-fugitive')

    use({
        "jake-stewart/multicursor.nvim",
        branch = "1.0",
        config = function()
            local mc = require("multicursor-nvim")

            mc.setup()

            -- Add cursors above/below the main cursor.
            vim.keymap.set({"n", "v"}, "<up>", function() mc.addCursor("k") end)
            vim.keymap.set({"n", "v"}, "<down>", function() mc.addCursor("j") end)

            -- Add a cursor and jump to the next word under cursor.
            vim.keymap.set({"n", "v"}, "<c-n>", function() mc.addCursor("*") end)

            -- Jump to the next word under cursor but do not add a cursor.
            vim.keymap.set({"n", "v"}, "<c-s>", function() mc.skipCursor("*") end)

            -- Rotate the main cursor.
            vim.keymap.set({"n", "v"}, "<left>", mc.nextCursor)
            vim.keymap.set({"n", "v"}, "<right>", mc.prevCursor)

            -- Delete the main cursor.
            vim.keymap.set({"n", "v"}, "<leader>x", mc.deleteCursor)

            -- Add and remove cursors with control + left click.
            vim.keymap.set("n", "<c-leftmouse>", mc.handleMouse)

            vim.keymap.set({"n", "v"}, "<c-q>", function()
                if mc.cursorsEnabled() then
                    -- Stop other cursors from moving.
                    -- This allows you to reposition the main cursor.
                    mc.disableCursors()
                else
                    mc.addCursor()
                end
            end)

            vim.keymap.set("n", "<esc>", function()
                if not mc.cursorsEnabled() then
                    mc.enableCursors()
                elseif mc.hasCursors() then
                    mc.clearCursors()
                else
                    -- Default <esc> handler.
                end
            end)

            -- Align cursor columns.
            vim.keymap.set("n", "<leader>a", mc.alignCursors) 

            -- Split visual selections by regex.
            vim.keymap.set("v", "S", mc.splitCursors)

            -- Append/insert for each line of visual selections.
            vim.keymap.set("v", "I", mc.insertVisual)
            vim.keymap.set("v", "A", mc.appendVisual)

            -- match new cursors within visual selections by regex.
            vim.keymap.set("v", "M", mc.matchCursors)

            -- Rotate visual selection contents.
            vim.keymap.set("v", "<leader>t", function() mc.transposeCursors(1) end)
            vim.keymap.set("v", "<leader>T", function() mc.transposeCursors(-1) end)

            -- Customize how cursors look.
            vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
            vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
            vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
            vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
        end,
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- (Autocompletion)
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

use ('tpope/vim-commentary')

use ('kana/vim-textobj-user')

use ('kana/vim-textobj-entire')

use { -- Add indentation guides even on blank lines
'lukas-reineke/indent-blankline.nvim',
-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
opts = {
    char = '┊',
    show_trailing_blankline_indent = false,
}
}

use ("tpope/vim-obsession")
-- Lua
use("stevearc/oil.nvim")
end)

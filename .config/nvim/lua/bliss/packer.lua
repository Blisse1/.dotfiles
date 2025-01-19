-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    -- Importante siempre hacerle un require
    use ('wbthomason/packer.nvim')

    -- Hace falta instalar una nerdfont para que funcione
    use ('nvim-tree/nvim-web-devicons')

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Recommended, not required.

    use ("folke/tokyonight.nvim")

    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup({
            })
        end
    })
    
    use ("mbbill/undotree")

    use ("tpope/vim-fugitive")

    use ("tpope/vim-commentary")

    use ("kana/vim-textobj-user")

    use ("kana/vim-textobj-entire")

    use ("stevearc/oil.nvim")

    use ("folke/trouble.nvim")

    use ("shellRaining/hlchunk.nvim")

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "L3MON4D3/LuaSnip",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp"
    }

    use({
        'Wansmer/treesj',
        requires = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    })

    use 'jinh0/eyeliner.nvim'
end)

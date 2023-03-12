-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { { 'nvim-lua/plenary.nvim' } }
   }

   use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
         vim.cmd('colorscheme rose-pine')
      end
   })

   use({
      "folke/trouble.nvim",
      config = function()
         require("trouble").setup {
            icons = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
         }
      end
   })

   use({
      "Pocco81/auto-save.nvim",
      config = function()
         require("auto-save").setup {
            -- your config goes here
            -- or just leave it empty :)
         }
      end,
   })

   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
         -- LSP Support
         { 'williamboman/mason.nvim' },
         { 'williamboman/mason-lspconfig.nvim' },
         { 'neovim/nvim-lspconfig' },

         -- Autocompletion
         { 'hrsh7th/nvim-cmp' },
         { 'hrsh7th/cmp-buffer' },
         { 'hrsh7th/cmp-path' },
         { 'saadparwaiz1/cmp_luasnip' },
         { 'hrsh7th/cmp-nvim-lsp' },
         { 'hrsh7th/cmp-nvim-lua' },

         -- Snippets
         { 'L3MON4D3/LuaSnip' },
         { 'rafamadriz/friendly-snippets' },
      }
   }

   use {
      'stevearc/aerial.nvim',
      config = function() require('aerial').setup() end
   }

   use {
      'numToStr/Comment.nvim',
      config = function()
         require('Comment').setup()
      end
   }

   use {
      'gelguy/wilder.nvim',
      config = function()
         local wilder = require "wilder"
         wilder.setup { modes = { ":", "/", "?" } }
         wilder.set_option(
            "renderer",
            wilder.popupmenu_renderer {
               highlighter = wilder.basic_highlighter(),
               left = { " ", wilder.popupmenu_devicons() },
               right = { " ", wilder.popupmenu_scrollbar() },
            }
         )
      end
   }

   use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
   use("nvim-treesitter/playground")
   use("dart-lang/dart-vim-plugin")
   use("theprimeagen/harpoon")
   use("theprimeagen/refactoring.nvim")
   use("mbbill/undotree")
   use("tpope/vim-fugitive")
   use("vim-airline/vim-airline")
   use("nvim-treesitter/nvim-treesitter-context")
   use("windwp/nvim-autopairs")
   use("kovetskiy/neovim-move")
   use("RRethy/vim-illuminate")
   use("folke/zen-mode.nvim")
   use("eandrju/cellular-automaton.nvim")
   use("laytan/cloak.nvim")
   use('wakatime/vim-wakatime')
end)

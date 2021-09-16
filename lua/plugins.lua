local packer = require("packer")

return packer.startup(
  function (use)
    use { 'wbthomason/packer.nvim' }

    -- Icons
    use {
      'kyazdani42/nvim-web-devicons',
      default = true,
      config = function ()
        require("nvim-web-devicons").setup({
          default = true
        })
        require'nvim-web-devicons'.has_loaded()
      end
    }

    -- UI Customizations
    use {
      'arcticicestudio/nord-vim',
      config = function ()
        vim.cmd[[colorscheme nord]]
      end
    }
    use {
      'hoob3rt/lualine.nvim',
       config = function ()
        require "lualine".setup {
          options = {
            theme = 'nord'
          }
        }
      end
    }
    use {
      "glepnir/dashboard-nvim",
      config = function ()
        require "plugins.dashboard"
      end
    }
    use {
      "kyazdani42/nvim-tree.lua",
      config = function ()
        require "plugins.nvim-tree"
      end
    }

    -- Essentials
    use {
      "folke/which-key.nvim",
      config = function ()
        require "which-key".setup {}
      end
    }
    use {
      'phaazon/hop.nvim',
      as = 'hop',
      config = function()
        require "hop".setup()
      end
    } 
    use { "ekickx/clipboard-image.nvim"}
    
    -- Fuzzy finding
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/popup.nvim'}, 
        {'nvim-lua/plenary.nvim'}
      },
      config = function ()
        require "plugins.telescope"
      end
    }
    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make",
      cmd = "Telescope"
    }
    use {
      "nvim-telescope/telescope-media-files.nvim",
      cmd = "Telescope"
    }

    -- Telescope extensions
    use { 
      'nvim-telescope/telescope-project.nvim',
      config = function ()
        require 'telescope'.load_extension('project')
      end
    }
    use {
      'nvim-telescope/telescope-github.nvim',
      config = function ()
        -- Register when github cli is installed
      end
    }
    use {
      'gbrlsnchs/telescope-lsp-handlers.nvim',
      config = function ()
        require 'telescope'.load_extension('lsp_handlers')
        require 'telescope'.setup({
          extensions = {
            lsp_handlers = {
              code_action = {
                telescope = require('telescope.themes').get_dropdown({}),
              }
            }
          }
        })
      end
    }
    
    -- Comments
    use {
      "terrortylor/nvim-comment",
      config = function ()
        require("nvim_comment").setup()
        require "plugins.nvim-comment";
      end
    }
    
    -- Code Highlighting
    use { 
      'nvim-treesitter/nvim-treesitter',
      config = function ()
        require("plugins.nvim-treesitter")
      end
    }
    use {
      "windwp/nvim-autopairs",                      
      config = function ()
        require("nvim-autopairs").setup()    
      end
    }

    -- Integrated terminal
    use { 
      "akinsho/nvim-toggleterm.lua",
      config = function ()
        require "toggleterm".setup {
          size = 20,
          hide_numbers = true,
          shell = vim.o.shell
        }
        require "plugins.toggleterm"
      end
    }
    
    -- Code formatting
    use {
      "mhartington/formatter.nvim",
      config = function ()
        require("plugins.formatter-nvim")
      end
    }

    -- LSP support
    use { 
      'neovim/nvim-lspconfig',
      config = function ()
        require("plugins.lsp")
      end
    }
    use { 
      'hrsh7th/nvim-compe',
      config = function ()
        require("plugins.compe")
      end
    }
    use { 'kabouzeid/nvim-lspinstall' }
    use { 
      'glepnir/lspsaga.nvim',
      config = function ()

      end
    }
    use {
      'kosayoda/nvim-lightbulb',
      config = function ()
        require 'nvim-lightbulb'.update_lightbulb {
          sign = {
            enabled = true
          }
        }
      end
    }
    use {
      'onsails/lspkind-nvim',
      config = function ()
        require('lspkind').init({
          preset = 'codicons'
        })
      requires = { 
        { 'mortepau/codicons.nvim' }
      }
      end
    }

    -- JS/TS Development
    use({ 
      "jose-elias-alvarez/null-ls.nvim",
      requires = {"nvim-lua/plenary.nvim", "neovim/nvim-lspconfig"}
    })
    use { "jose-elias-alvarez/nvim-lsp-ts-utils" }

    -- Org-mode in neovim
    use {
      'vhyrro/neorg',
      config = function ()
        require('neorg').setup {
          load = {
            ["core.defaults"] = {},
            ["core.norg.concealer"] = {},
            ["core.norg.dirman"] = {
              config = {
                workspaces = {
                  my_workspace = "~/neorg"
                }
              }
            }
          }
        }
      end
    }
  end
)

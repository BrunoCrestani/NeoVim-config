function ColorMyPencils(color)
    color = color or "default"  -- Ensure `color` has a default value if none is provided
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  --[[ 
  {
      "folke/tokyonight.nvim",
      config = function()
          require("tokyonight").setup({
              -- your configuration comes here
              -- or leave it empty to use the default settings
              style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
              transparent = true, -- Enable this to disable setting the background color
              terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
              styles = {
                  -- Style to be applied to different syntax groups
                  -- Value is any valid attr-list value for `:help nvim_set_hl`
                  comments = { italic = false },
                  keywords = { italic = false },
                  -- Background styles. Can be "dark", "transparent" or "normal"
                  sidebars = "dark", -- style for sidebars, see below
                  floats = "dark", -- style for floating windows
              },
          })
          ColorMyPencils("tokyonight")
      end
  },
  --]]

  { 
      "bluz71/vim-moonfly-colors",
      name = "moonfly",
      lazy = false,
      priority = 1000,
      config = function ()
          require('moonfly')
          vim.g.moonflyTransparent = true

          require("nvim-treesitter.configs").setup({
            highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
          },
        })

          ColorMyPencils("moonfly")
      end
  },
  --]]

  --[[ 
  {
      "rose-pine/neovim",
      name = "rose-pine",
      config = function()
          require('rose-pine').setup({
              disable_background = true,
          })
          vim.cmd("colorscheme rose-pine")
          ColorMyPencils("rose-pine")
      end
  },
  --]]

  --[[
  {
      "gruvbox-community/gruvbox",
      config = function()
          -- Check if gruvbox setup function is available
          if pcall(require, 'gruvbox') then
              require("gruvbox").setup({
                  overrides = {
                      ["@lsp.type.method"] = { bg = "#ff9900" },
                      ["@comment.lua"] = { bg = "#000000" },
                  }
              })
          end
          vim.cmd("colorscheme gruvbox")
          ColorMyPencils("gruvbox")
      end
  },
  --]]

  --[[
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require('nightfox').setup({
          options = {
              -- Additional configuration options for nightfox
              transparent = true, -- Enable this to disable setting the background color
          }
      })

      ColorMyPencils("carbonfox")
    end
  }
  ]]--

  --[[
  {
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup({
      })
      ColorMyPencils("github_dark_high_contrast")
    end
  }
  ]]--

  --[[
  {
    "catppuccin/nvim", name = "catppuccin", priority = 1000, 
    config = function()
      require("catppuccin").setup({
      })

      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        },
      })
      ColorMyPencils("catppuccin")
    end
  }
  ]]--

}

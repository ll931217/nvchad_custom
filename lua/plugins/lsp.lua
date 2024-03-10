  return {
    {
      "neovim/nvim-lspconfig",
      config = function()
        require "configs.lspconfig"
      end, -- Override to setup mason-lspconfig
    },
    {
      'onsails/lspkind.nvim',
      opts = function(_, opts)
        opts.mode = 'symbol_text'
        opts.preset = 'codicons'
        -- set some missing symbol types
        opts.symbol_map = {
          Text = "󰉿",
          Method = "󰆧",
          Function = "󰊕",
          Constructor = "",
          Field = "󰜢",
          Variable = "󰀫",
          Class = "󰠱",
          Interface = "",
          Module = "",
          Property = "󰜢",
          Unit = "󰑭",
          Value = "󰎠",
          Enum = "",
          Keyword = "󰌋",
          Snippet = "",
          Color = "󰏘",
          File = "󰈙",
          Reference = "󰈇",
          Folder = "󰉋",
          EnumMember = "",
          Constant = "󰏿",
          Struct = "󰙅",
          Event = "",
          Operator = "󰆕",
          TypeParameter = "",
        }
        return opts
      end,
    },
  }

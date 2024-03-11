  return {
    {
      "williamboman/mason.nvim",
      opts = require('configs.overrides').mason
    },
    {
      "williamboman/mason-lspconfig.nvim",
    },
    {
      "neovim/nvim-lspconfig",
      lazy = true,
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

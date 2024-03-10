return {
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      local opts = { expr = true, silent = true}

      vim.keymap.set('i', '<c-a>', function ()
        return vim.fn['codeium#Accept']()
      end, opts)
      vim.keymap.set('i', '<c-;>', function ()
        return vim.fn['codeium#CycleCompletions'](1)
      end, opts)
      vim.keymap.set('i', '<c-,>', function ()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, opts)
      vim.keymap.set('i', '<c-x>', function ()
        return vim.fn['codeium#Clear']()
      end, opts)
    end,
  },
  {
    'jackMort/ChatGPT.nvim',
    event = 'VeryLazy',
    requires = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    }
  },

  {
    "David-Kunz/gen.nvim",
    event = "VeryLazy",
    opts = {
      model = "codellama",
    },
  },
}

require "nvchad.mappings"

local map = vim.keymap.set

map('n', '<leader>q', '<cmd>qa<cr>', { desc = 'Quit all' })
map('n', ';', ':', { desc = 'Enter command mode' })

map('n', '<leader>fm', function()
  require("conform").format()
end, { desc = 'Format with conform' })

map('n', '<', function()
  require('nvchad.tabufline').move_buf(-1)
end, { desc = 'Move buffer left' })
map('n', '>', function()
  require('nvchad.tabufline').move_buf(1)
end, { desc = 'Move buffer right' })

map('n', '<leader><leader>w', '<cmd>HopWord<cr>', { desc = 'Hop word' })
map('n', '<leader><leader>c', '<cmd>HopChar1<cr>', { desc = 'Hop character' })

map('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open LazyGit' })

map('n', '<C-n>', '<cmd>Neotree toggle<cr>', { desc = 'Toggle nvimtree' })
map('n', '<leader>e', '<cmd>Neotree reveal<cr>', { desc = 'Focus nvimtree' })

map({ 'n', 'v' }, '<leader>]', '<cmd>Gen<cr>', { desc = 'Gen with ollama' })

map('n', '<S-l>', function()
  require('nvchad.tabufline').next()
end, { desc = 'Goto next buffer' })
map('n', '<S-h>', function()
  require('nvchad.tabufline').prev()
end, { desc = 'Goto previous buffer' })

map('n', 'gD', '<cmd>lua require("telescope.builtin").lsp_type_definitions()<cr>', { desc = 'Go to declaration' })
map('n', 'gd', '<cmd>lua require("telescope.builtin").lsp_definitions()<cr>', { desc = 'Go to definition' })
map('n', 'gr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', { desc = 'Go to references' })

-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- Lazy
return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  config = function()
    local chatgpt = require 'chatgpt'
    chatgpt.setup()
    vim.keymap.set('v', '<leader>pe', function()
      chatgpt.edit_with_instructions()
    end, { desc = 'ChatGPT: Edit with instructions' })
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'folke/trouble.nvim', -- optional
    'nvim-telescope/telescope.nvim',
  },
}

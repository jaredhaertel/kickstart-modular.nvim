return {
  {
    'obsidian-nvim/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',
      -- Optional
      'nvim-telescope/telescope.nvim',
      'Saghen/blink.cmp',
    },
    ---@module 'obsidian'
    ---@type obsidian.config.ClientOpts
    opts = {
      workspaces = {
        {
          name = 'personal',
          path = '~/Documents/Vault',
        },
      },

      completion = {
        nvim_cmp = false, -- disable!
        blink = true,
        min_chars = 2,
      },

      templates = {
        folder = '900 Templates',
        date_format = '%Y-%m-%d',
        time_format = '%H:%M',
      },

      daily_notes = {
        folder = '100 Journal',
        alias_format = '%B %-d, %Y',
        default_tags = { 'journal' },
        template = 'Journal.md',
        workdays_only = false,
      },

      -- see below for full list of options 👇
    },
    init = function()
      vim.opt.conceallevel = 1
    end,
  },
}

return {
  {
    'SirVer/ultisnips',
    init = function()
      vim.g.UltiSnipsExpandTrigger = '<Tab>'
      vim.g.UltiSnipsJumpForwardTrigger = '<C-b>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<C-z>'
    end,
  },
}

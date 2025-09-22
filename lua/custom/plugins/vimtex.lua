return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      -- global vimtex settings
      -- vim.g.vimtex_imaps_enabled = 0
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_quickfix_ignore_filters =
        { 'Underfull', 'Overfull', 'LaTeX Warning: .\\+ float specifier changed to', 'Package hyperref Warning: Token not allowed in a PDF string' }
    end,
  },
}

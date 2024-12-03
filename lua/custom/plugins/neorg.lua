return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  -- tag = "*",
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {}, -- Loads default behaviour
        ['core.concealer'] = {}, -- Adds pretty icons to your documents
        ['core.export'] = {}, -- Load export module
        ['core.export.markdown'] = {}, -- Add Markdown support
        ['core.integrations.image'] = {},
        ['core.dirman'] = { -- Manages Neorg workspaces
          config = {
            default_workspace = 'notes',
            workspaces = {
              notes = '~/notes',
              mpp_presentation = '~/mpp_presentation',
              pnc_mpp_docs = '~/pnc_mpp_docs',
            },
          },
        },
      },
    }
  end,
}

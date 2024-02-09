return {
  -- copilot
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   build = ":Copilot auth",
  --   opts = {
  --     suggestion = { enabled = false },
  --     panel = { enabled = false },
  --     filetypes = {
  --       markdown = true,
  --       help = true,
  --     },
  --   },
  -- },  -- copilot cmp source
  -- {
  --   "nvim-cmp",
  --   dependencies = {
  --     {
  --       "zbirenbaum/copilot-cmp",
  --       dependencies = "copilot.lua",
  --       opts = {},
  --       config = function ()
  --         require("copilot_cmp").setup()
  --       end
  --       -- config = function(_, opts)
  --       --   local copilot_cmp = require("copilot_cmp")
  --       --   copilot_cmp.setup(opts)
  --       --   -- attach cmp source whenever copilot attaches
  --       --   -- require("lazyvim.util").lsp.on_attach(function(client)
  --       --     -- if client.name == "copilot" then
  --       --     --   copilot_cmp._on_insert_enter({})
  --       --     -- end
  --       --   -- end)
  --       -- end,
  --     },
  --   },
  -- },
  {
    "github/copilot.vim",
    config = function()
      vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })
      vim.g.copilot_no_tab_map = true
    end
  },

}

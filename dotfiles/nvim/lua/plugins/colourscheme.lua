return {

  --////////// gruvbox

  --   {
  --   -- add gruvbox
  --   { "ellisonleao/gruvbox.nvim"},
  { "rockerBOO/boo-colorscheme-nvim", "ellisonleao/gruvbox.nvim" },
  --   -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "boo-colorscheme",
      colorscheme = "lunaperche",
    },
  },
  -- }
  --

  -- /////////////  catupuccin

  --   {
  --     "catppuccin/nvim",
  --     lazy = true,
  --     name = "catppuccin",
  --     opts = {
  --       integrations = {
  --         aerial = true,
  --         alpha = true,
  --         cmp = true,
  --         dashboard = true,
  --         flash = true,
  --         fzf = true,
  --         grug_far = true,
  --         gitsigns = true,
  --         headlines = true,
  --         illuminate = true,
  --         indent_blankline = { enabled = true },
  --         leap = true,
  --         lsp_trouble = true,
  --         mason = true,
  --         markdown = true,
  --         mini = true,
  --         native_lsp = {
  --           enabled = true,
  --           underlines = {
  --             errors = { "undercurl" },
  --             hints = { "undercurl" },
  --             warnings = { "undercurl" },
  --             information = { "undercurl" },
  --           },
  --         },
  --         navic = { enabled = true, custom_bg = "lualine" },
  --         neotest = true,
  --         neotree = true,
  --         noice = true,
  --         notify = true,
  --         semantic_tokens = true,
  --         snacks = true,
  --         telescope = true,
  --         treesitter = true,
  --         treesitter_context = true,
  --         which_key = true,
  --       },
  --     },
  --     specs = {
  --       {
  --         "akinsho/bufferline.nvim",
  --         optional = true,
  --         opts = function(_, opts)
  --           if (vim.g.colors_name or ""):find("catppuccin") then
  --             opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
  --           end
  --         end,
  --       },
  --     },
  --   },
  -- }
  --
  -- /////////////boo
  --
  --
  -- {
  --   "boo-colorscheme",
  --   lazy = false,
  --   name = "boo",
  --   -- opts = {
  --   --   italic = false,
  --   --   theme = "boo",
  --   -- },
  -- },
}

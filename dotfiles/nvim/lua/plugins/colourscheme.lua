return {
    --// END OF FILE COLOUR OVERRIDES (needs to execute last to overide)
    --////////// gruvbox

    --   {
    --   -- add gruvbox
    --   { "ellisonleao/gruvbox.nvim"},
    { "rockerBOO/boo-colorscheme-nvim", "ellisonleao/gruvbox.nvim" },
    --   -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "boo",
            --colorscheme = "lunaperche",
        },
        config = function(_, opts)
            require("lazyvim.config").setup(opts)
            vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "@function", { fg = "#41965a", bold = true })
            vim.api.nvim_set_hl(0, "@function.call", { fg = "#208540", italic = true, bold = false})
            vim.api.nvim_set_hl(0, "@keyword", { fg = "#8f75c9", bold = true })
            vim.api.nvim_set_hl(0, "@comment", { fg = "#2c4473", italic = true})
            vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#80a66a",})
            vim.api.nvim_set_hl(0, "@variable", { fg = "#36a398"})
            vim.api.nvim_set_hl(0, "@variable.parameter.builtin", { fg = "#FFFFFF"})
            vim.api.nvim_set_hl(0, "@number", { fg = "#FFFFFF"})
        end,
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

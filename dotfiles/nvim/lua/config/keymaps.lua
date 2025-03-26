-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
 
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    -- Remap confirm selection to Shift+Enter
    opts.mapping = cmp.mapping.preset.insert({
      ["<S-CR>"] = cmp.mapping.confirm({ select = true }),
      ["<CR>"] = cmp.mapping(function(fallback)
        fallback() -- Enter does default action (newline)
      end),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    })

    -- Disable inline (ghost text) completions
    opts.experimental = {
      ghost_text = false,
    }

    return opts
  end,
}

local key_mapper = require("../../core/keymap");
local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    }
  }
}

-- Set key bindings for telescope.nvim
key_mapper('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
key_mapper('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
key_mapper('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
key_mapper('n', '<Leader>fn', '<cmd>Telescope help_tags<cr>')

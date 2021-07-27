local Terminal = require('toggleterm.terminal').Terminal
local key_mapper = require("../../core/keymap")

key_mapper ('t', '<leader><esc>', "<C-\\><C-n>")
key_mapper ('n', 'tt', ":ToggleTerm size=15<cr>")

-- Lazygit integration 
local lazygit = Terminal:new({ cmd = "lazygit",
  hidden = true,
  direction = "float",
})

function _lazygit_toggle ()
  lazygit:toggle()
end

key_mapper ('n', '<leader>g', '<cmd>lua _lazygit_toggle()<cr>')

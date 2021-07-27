local key_mapper = require("../../core/keymap");

key_mapper('n', '<leader>tn', ':NvimTreeToggle<cr>')
key_mapper('n', '<leader>nr', ':NvimTreeRefresh<cr>')
key_mapper('n', '<leader>nf', ':NvimTreeFindFile<cr>')

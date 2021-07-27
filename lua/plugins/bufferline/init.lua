local key_mapper = require("../../core/keymap")

key_mapper ('n', 'gt', "<cmd>:BufferLineCycleNext<cr>")
key_mapper ('n', 'gT', '<cmd>:BufferLineCyclePrev<cr>')

key_mapper ('n', 'gh', '<cmd>:BufferLineMoveNext<cr>')
key_mapper ('n', 'gl', '<cmd>:BufferLineMovePrev<cr>')

key_mapper ('n', 'gy', '<cmd>:BufferLinePick<cr>')
key_mapper ('n', 'gq', '<cmd>:BufferLinePickClose<cr>')

local key_mapper = require("../../core/keymap") 

require("formatter").setup({
  logging = false,
  filetype = {
    javascript = {
      -- prettier
      function ()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            vim.api.nvim_buf_get_name(0),
            "--single-quote"
          },
          stdin = true
        }
      end
    },
    javascriptreact = {
      -- prettier
      function ()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            vim.api.nvim_buf_get_name(0),
            "--single-quote"
          },
          stdin = true
        }
      end
    },
    typescript = {
      -- prettier
      function ()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            vim.api.nvim_buf_get_name(0),
            "--single-quote"
          },
          stdin = true
        }
      end
    },
    typescriptreact = {
      -- prettier
      function ()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            vim.api.nvim_buf_get_name(0),
            "--single-quote"
          },
          stdin = true
        }
      end
    },
    lua = {
      -- luafmt
      function ()
        return {
          exe = "luafmt",
          args = {
            "--indent-count",
            "2",
            "--stdin"
          },
          stdin = true
        }
      end
    }
  }
})

key_mapper('n', '<Leader>fm', "<cmd>Format<cr>")

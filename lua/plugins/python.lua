return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                -- Disable style rules (the noisy ones)
                pycodestyle = {
                  enabled = false,
                },
                flake8 = {
                  enabled = false,
                },

                -- Keep real error detection
                pyflakes = {
                  enabled = true,
                },

                -- Optional helpers
                mccabe = {
                  enabled = false,
                },
              },
            },
          },
        },
      },
    },
  },
}

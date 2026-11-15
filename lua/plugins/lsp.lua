return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = "/mnt/games/Projects/python-env/bin/python",
            },
          },
        },

        prisma = {},
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  enabled = false,
                },
                flake8 = {
                  enabled = false,
                },
                pyflakes = {
                  enabled = true,
                },
                mccabe = {
                  enabled = false,
                },
              },
            },
          },
        },

        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                library = {
                  "/usr/share/hypr/stubs",
                },
                checkThirdParty = false,
              },
              diagnostics = {
                globals = { "hl" },
              },
            },
          },
        },

        yamlls = {
          settings = {
            yaml = {
              validate = true,
              completion = true,
              hover = true,
              schemas = {
                kubernetes = {
                  "*.yaml",
                  "*.yml",
                },
              },
              kubernetesVersion = "1.36.1",
            },
          },
        },
      },
    },
  },
}

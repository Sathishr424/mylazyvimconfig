return {
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    opts = {
      provider = "openai_fim_compatible",
      n_completions = 1,
      context_window = 512,
      request_timeout = 5,
      throttle = 500,
      debounce = 250,

      provider_options = {
        openai_fim_compatible = {
          api_key = "TERM",
          name = "Ollama",
          end_point = "http://localhost:11434/v1/completions",
          model = "qwen2.5-coder:1.5b",
          optional = {
            max_tokens = 64,
            temperature = 0.2,
          },
        },
      },

      virtualtext = {
        auto_trigger_ft = {
          "lua",
          "python",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "html",
          "css",
          "json",
          "bash",
          "go",
          "rust",
        },

        keymap = {
          accept = "<A-a>",
          accept_line = "<A-l>",
          dismiss = "<A-e>",
          next = "<A-]>",
          prev = "<A-[>",
        },
      },
    },
  },
}

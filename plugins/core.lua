return {
  -- You can disable default plugins as follows:
  { "goolord/alpha-nvim", enabled = false },
  { "stevearc/aerial.nvim", enabled = false },
  {
    "rcarriga/nvim-dap-ui",
    config = function(plugin, opts)
      require "plugins.configs.nvim-dap-ui"(plugin, opts)
      local dap = require "dap"
      dap.listeners.after.event_initialized["dapui_config"] = nil
      dap.listeners.before.event_terminated["dapui_config"] = nil
      dap.listeners.before.event_exited["dapui_config"] = nil
    end,
    enabled = false,
  },
  { "rcarriga/cmp-dap", enabled = false },
  { "mfussenegger/nvim-dap", enabled = false },
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },
  { "mrjones2014/smart-splits.nvim", enabled = false },
  { "s1n7ax/nvim-window-picker", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "rcarriga/nvim-notify",
    opts = { render = "minimal" },
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        ["astro"] = { icon = "󱓟", color = "#FF4900", name = "Astro" },
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path) require("neo-tree").close_all() end,
        },
      },
    },
  },
}

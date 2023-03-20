return {
  {
    "gelguy/wilder.nvim",
    config = function()
      local wilder = require("wilder")
      wilder.setup({ modes = { ":", "/", "?" } })
      wilder.set_option(
        "renderer",
        wilder.popupmenu_renderer({
          highlighter = wilder.basic_highlighter(),
          left = { " ", wilder.popupmenu_devicons() },
          right = { " ", wilder.popupmenu_scrollbar() },
        })
      )
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "akinsho/flutter-tools.nvim",
    cmd = "FlutterDevices",
    keys = { { "<leader>cF", "<cmd>FlutterDevices<cr>", desc = "Flutter Devices" } },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("config.flutter").setup()
    end,
  },

  { "wakatime/vim-wakatime" },
  { "mfussenegger/nvim-dap" },
  { "theprimeagen/harpoon" },
  { "theprimeagen/refactoring.nvim" },
}

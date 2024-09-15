-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  event = "VeryLazy",

  opts = {
    keys = {
      scroll_down = "<c-d>", -- binding to scroll down inside the popup
      scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
  },
  keys = {
    {
      "<leader>0",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    }
  },

  config = function()
    require('which-key').add {
      -- document existing key chains
      { "<leader>1",  group = "More git" },
      { "<leader>1_", hidden = true },
      { "<leader>c",  group = "[C]ode" },
      { "<leader>c_", hidden = true },
      { "<leader>d",  group = "[D]ocument" },
      { "<leader>d_", hidden = true },
      { "<leader>g",  group = "[G]it" },
      { "<leader>g_", hidden = true },
      { "<leader>h",  group = "[H]arpoon" },
      { "<leader>h_", hidden = true },
      { "<leader>r",  group = "[R]ename" },
      { "<leader>r_", hidden = true },
      { "<leader>s",  group = "[S]earch" },
      { "<leader>s_", hidden = true },
      { "<leader>w",  group = "[W]orkspace" },
      { "<leader>w_", hidden = true },
    }
  end
}

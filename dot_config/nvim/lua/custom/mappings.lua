---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "switch to next buffer",
      opts = { nowait = true },
    },
    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "switch to previous buffer",
      opts = { nowait = true },
    },

    ["j"] = { "<Plug>(accelerated_jk_gj)", "go up fast", opts = { noremap = true } },
    ["k"] = { "<Plug>(accelerated_jk_gk)", "go down fast", opts = { noremap = true } },

    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "Window left", opts = { noremap = true } },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "Window right", opts = { noremap = true } },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "Window down", opts = { noremap = true } },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "Window up", opts = { noremap = true } },
    ["<C-\\>"] = { "<cmd>TmuxNavigatePrevious<cr>", "Window prev", opts = { noremap = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    ["kj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  x = {
    ["J"] = { ":move '>+1<CR>gv-gv", "Move block of text up", opts = { nowait = true } },
    ["K"] = { ":move '<-2<CR>gv-gv", "Move block of text down", opts = { nowait = true } },
  },
}

-- more keybinds!
M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd>q!<CR>", "quit", opts = { nowait = true } },
  },
}
M.nvterm = {
  n = {
    ["<leader>s"] = { "<cmd>ToggleTerm direction=horizontal size=10<CR>" },
    ["<leader-v>"] = { "<cmd>ToggleTerm direction=vertical size=80<CR>" },
  },
}
M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon"):list():append()
      end,
    },
    ["<leader>he"] = { "<cmd>Telescope harpoon marks<CR>" }, -- change to harpoon2
    ["<leader>1"] = {
      function()
        require("harpoon"):list():select(1)
      end,
    },
    ["<leader>2"] = {
      function()
        require("harpoon"):list():select(2)
      end,
    },
    ["<leader>3"] = {
      function()
        require("harpoon"):list():select(3)
      end,
    },
    ["<leader>4"] = {
      function()
        require("harpoon"):list():select(4)
      end,
    },

    ["<leader>hn"] = {
      function()
        require("harpoon"):list():next()
      end,
    },
    ["<leader>hp"] = {
      function()
        require("harpoon"):list():prev()
      end,
    },

    ["<leader>hl"] = { "<cmd>Telescope harpoon marks<CR>" },
  },
}

return M

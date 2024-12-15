return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
    local keymap = vim.keymap
      keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
      keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Toggle file explorer on current file" })
      keymap.set("n", "<leader>ec", "<cmd>Neotree close<CR>", { desc = "Collapse file explorer" })
      vim.keymap.set("n", "<leader>er", function()
        vim.cmd("Neotree close") -- Close the file explorer
        vim.cmd("Neotree show") -- Reopen it, effectively refreshing
      end, { desc = "Refresh file explorer" })
    end
  }


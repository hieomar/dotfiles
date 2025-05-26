return {
    {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  config = function(_, opts)
    -- This is where you configure Neo-tree
    -- You can also add more options here, see `:help neo-tree` for details
    require("neo-tree").setup(opts)

    -- Optionally, you can set up keybindings for Neo-tree
    vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<cr>", { desc = "Show Neo-tree" })
  end,
}
}

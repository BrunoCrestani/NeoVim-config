return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { 
    "nvim-telescope/telescope.nvim", 
    "nvim-lua/plenary.nvim" 
  },

  config = function()
    require("telescope").setup()
    
    vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
    -- open file_browser with the path of the current buffer
    vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    
    -- To get telescope-file-browser loaded and working with telescope,
    -- you need to call load_extension, somewhere after setup function:
    require("telescope").load_extension "file_browser"
  end
}

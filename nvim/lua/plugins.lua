local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  } -- Color Theme
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'akinsho/nvim-bufferline.lua' -- Tab
  use 'windwp/nvim-autopairs' -- Parentheses Storage
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  } -- Comment out
  use 'lewis6991/gitsigns.nvim' -- Git marker
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- Filer
end)

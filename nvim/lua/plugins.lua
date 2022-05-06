require('lualine').setup {
  options = {
    theme = 'dracula-nvim',
    icons_enabled = false
  }
}

vim.cmd [[packadd packer.nvim]]
vim.cmd [[colorscheme dracula]]

return require('packer').startup(function()
  use 'Mofiqul/dracula.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use {
    'nvim-telescope/telescope.nvim',
    tag = 'nvim-0.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
	use 'nvim-telescope/telescope-media-files.nvim'
	use 'nvim-telescope/telescope-fzy-native.nvim'
	use 'nvim-telescope/telescope-project.nvim'

  use {'wbthomason/packer.nvim', opt = true}
  use { 'nvim-lualine/lualine.nvim' }
end)


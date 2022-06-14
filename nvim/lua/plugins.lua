vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

return require('packer').startup(function()
	-- Packer
  use {'wbthomason/packer.nvim', opt = true}
	
	-- Utilities
	use("nvim-lua/plenary.nvim")

	-- Theme
	use 'Mofiqul/dracula.nvim'

	-- Miscelaneous
	use("kyazdani42/nvim-web-devicons") -- Icons

	-- Status Bar
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })

	-- Telescope
	use("nvim-telescope/telescope.nvim") -- Searcher
	use("nvim-telescope/telescope-media-files.nvim") -- See images
	use("nvim-telescope/telescope-fzy-native.nvim") -- Better sorte
end)


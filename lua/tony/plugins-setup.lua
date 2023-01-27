-- ******** if auto load isn't working do ':PackerSync' **************

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync 
  augroup end
]])



--Autocommand that reloads nvim whenever you save this file
local status, packer = pcall(require, "packer")
if not status then
    return
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use {"ellisonleao/gruvbox.nvim"}
  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'
  use 'numToStr/Comment.nvim'
  -- file explorer
  use 'nvim-tree/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  -- fuzzy finding w/ telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
     requires = { {'nvim-lua/plenary.nvim'} }
      }

  --autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  --snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets




--managing and installing lsp servers
-- use 'williamboman/mason.nvim'
-- use 'williamboman/mason-lspconfig.nvim'
--
--
-- --configure the lsp servers
-- use 'neovim/nvim-lspconfig'
-- use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
--   use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
--   use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
--   use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)














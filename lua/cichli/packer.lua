vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

   use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use({
	  --'rose-pine/neovim',
	  --as = 'rose-pine',
	  --config = function()
		  --vim.cmd('colorscheme rose-pine')
	  --end
  --})
  use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }

  use "olimorris/onedarkpro.nvim"

  use { "catppuccin/nvim", as = "catppuccin" }
  use "rebelot/kanagawa.nvim"
  use "drewtempelmeyer/palenight.vim"
  use "tinted-theming/base16-vim"

  use {
	   'nvim-treesitter/nvim-treesitter',
	   run = function()
		   local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		   ts_update()
	   end,};
  use("theprimeagen/harpoon");
  use("mbbill/undotree");
  use("tpope/vim-fugitive");
  use("nvim-treesitter/nvim-treesitter-context");

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }

}
  use("github/copilot.vim")

  use('preservim/nerdcommenter')

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

  use {
      'gennaro-tedesco/nvim-possession',
      requires = {'ibhagwan/fzf-lua'}
  }

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

end)

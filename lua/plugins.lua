return {
    -- colorscheme
    {"folke/tokyonight.nvim"},
    {"ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ...},

    -- treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    -- lsp
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},


    -- Bracket auto-closing
    {'m4xshen/autoclose.nvim'},

    -- File finding && grep
    {'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
},

-- status line
{
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons', opt = true}
},

-- floating cmdline
{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
},

-- boolean toggler
{'nat-418/boole.nvim'},


-- code autocompletion
{'hrsh7th/nvim-cmp'},

-- git integration
{
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional
    },
    config = true
},

-- directory browser
{'stevearc/oil.nvim'},

-- nvim  config autocompletion
{"folke/neodev.nvim", opts = {}},

-- terminal
{"CRAG666/betterTerm.nvim"},

-- better errors
{
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
},

-- break bad habits
{
    "m4xshen/hardtime.nvim",
    dependencies = {"MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim"},
    opts = {enabled = false},
},

-- code screenshots
{ "mistricky/codesnap.nvim", build = "make" },

}

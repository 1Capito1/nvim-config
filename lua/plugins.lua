return {
    -- colorscheme
    {"folke/tokyonight.nvim"},

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
    'VonHeikemen/fine-cmdline.nvim',
    dependencies = {'MunifTanjim/nui.nvim'}
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

{'mfussenegger/nvim-jdtls'},
}

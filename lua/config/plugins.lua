return {
    { "folke/todo-comments.nvim", opts = {} },
    { "stevearc/oil.nvim",        dependencies = { { "echasnovski/mini.icons", opts = {} } } },
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    { "neovim/nvim-lspconfig" },
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '*',
        config = function()
            require("blink.cmp").setup({
                keymap = { preset = "default" },
                completion = {
                    menu = {
                        draw = {
                            columns = {
                                { "label",     "label_description", gap = 1 },
                                { "kind_icon", "kind",              gap = 1 },
                            },
                        },
                        border = "single",
                        winblend = 0,
                        winhighlight = 
                        "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder",
                        scrollbar = false
                    },
                    documentation = {
                        auto_show = true,
                    },
                    ghost_text = {
                        enabled = true,
                    }
                },
                appearance = {
                    nerd_font_variant = "mono",
                },
                snippets = { preset = "luasnip" },
                sources = {
                    default = { "lsp", "path", "snippets", "buffer" },
                },
                signature = {
                    enabled = true,
                    window = {
                        min_width = 1,
                        max_width = 100,
                        max_height = 10,
                        border = 'single',
                        winblend = 0,
                        winhighlight = 'Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder',
                        scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
                        -- Which directions to show the window,
                        -- falling back to the next direction when there's not enough space,
                        -- or another window is in the way
                        direction_priority = { 'n', 's' },
                        -- Disable if you run into performance issues
                        treesitter_highlighting = true,
                        show_documentation = true,
                    },
                },
            })
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    { -- optional cmp completion source for require statements and module annotations
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            opts.sources = opts.sources or {}
            table.insert(opts.sources, {
                name = "lazydev",
                group_index = 0, -- set group index to 0 to skip loading LuaLS completions
            })
        end,
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
    },
    { 'echasnovski/mini.pairs',        version = false },
    { "christoomey/vim-tmux-navigator" },
    { "folke/trouble.nvim",            lazy = false },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Make sure you're using LuaSnip v2
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
    },
}

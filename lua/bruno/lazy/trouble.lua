return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                -- Custom settings for trouble.nvim
                mode = "document_diagnostics",  -- Set default mode
                use_diagnostic_signs = true,    -- Use signs defined in lsp
                signs = {
                    error = "",
                    warning = "",
                    hint = "",
                    information = "",
                },
                action_keys = {                 -- Customize default action keys
                    close = "q",                -- Close Trouble window
                    cancel = "<esc>",           -- Cancel preview
                    refresh = "r",              -- Refresh diagnostics
                    jump = {"<cr>", "<tab>"},   -- Jump to diagnostic
                    open_split = { "<c-x>" },   -- Open in horizontal split
                    open_vsplit = { "<c-v>" },  -- Open in vertical split
                    open_tab = { "<c-t>" },     -- Open in new tab
                },
                auto_preview = true,            -- Enable auto-preview of diagnostic
            })

            -- Key mappings
            local keymap = vim.keymap.set
            local opts = { noremap = true, silent = true }
            
            -- Toggle Trouble window
            keymap("n", "<leader>tt", function()
                require("trouble").toggle()
            end, opts)

            -- Navigate to next diagnostic item
            keymap("n", "[t", function()
                require("trouble").next({skip_groups = true, jump = true})
            end, opts)

            -- Navigate to previous diagnostic item
            keymap("n", "]t", function()
                require("trouble").previous({skip_groups = true, jump = true})
            end, opts)

            -- Additional useful mappings
            keymap("n", "<leader>td", "<cmd>Trouble document_diagnostics<cr>", opts)  -- Show document diagnostics
            keymap("n", "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", opts) -- Show workspace diagnostics
            keymap("n", "<leader>tl", "<cmd>Trouble loclist<cr>", opts)               -- Show location list
            keymap("n", "<leader>tq", "<cmd>Trouble quickfix<cr>", opts)              -- Show quickfix list
        end
    }
}


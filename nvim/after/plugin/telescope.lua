local builtin = require("telescope.builtin")
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        prompt_prefix = ": ",
        selection_caret = " ",
        path_display = { "truncate" },
        hidden = true,
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.3,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        file_ignore_patterns = {
            ".git/",
            "%.sqlite3",
            "node_modules/*",
            "%.jpg",
            "%.jpeg",
            "%.png",
            "%.svg",
            "%.otf",
            "%.ttf",
            "%.webp",
        },
        mappings = {
            n = {
                ["q"] = actions.close,
                ["<esc>"] = actions.close,
            }
        }
    },
    vimgrep_arguments = {
        "ag",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
    },
})

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("n", "<C-p>", builtin.find_files, opts)
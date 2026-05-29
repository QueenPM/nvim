-- Add indentation guides even on blank lines

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help ibl`
vim.pack.add { 'https://github.com/lukas-reineke/indent-blankline.nvim' }
local muted_pink_gradient = {
    "#4A3D40",
    "#594A4D",
    "#6D5B5E",
    "#826D71",
    "#967F83",
}

local function set_gradient_highlights()
    for i, color in ipairs(muted_pink_gradient) do
        vim.api.nvim_set_hl(0, "IndentMutedPink" .. i, { fg = color, nocombine = true })
    end
    vim.api.nvim_set_hl(0, "IndentMutedPinkScope", { fg = "#B58A91", nocombine = true })
end

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = set_gradient_highlights,
})
set_gradient_highlights()

require("ibl").setup({
    indent = {
        char = "┊",
        highlight = {
            "IndentMutedPink1",
            "IndentMutedPink2",
            "IndentMutedPink3",
            "IndentMutedPink4",
            "IndentMutedPink5",
        },
    },
    scope = {
        char = "┊",
        highlight = "IndentMutedPinkScope",
        show_start = false,
        show_end = false,
    },
})

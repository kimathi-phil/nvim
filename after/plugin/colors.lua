require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "#151219" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#151219" })
end

ColorMyPencils()

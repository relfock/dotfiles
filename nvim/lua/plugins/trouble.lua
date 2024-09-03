vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix toggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>",
  {silent = true, noremap = true}
)

-- Diagnostic signs
-- https://github.com/folke/trouble.nvim/issues/52
local signs = {
    Error = " ",
    Warning = " ",
    Hint = " ",
    Information = " "
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

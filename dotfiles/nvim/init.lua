require("config.lazy")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.list = true
vim.opt.lcs = vim.opt.lcs + "space:."

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })

vim.keymap.set("v", "<Tab>", ">gv", { remap = false })
vim.keymap.set("v", "<S-Tab>", "<gv", { remap = false })

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

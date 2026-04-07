local set = vim.keymap.set

set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace" })
set("n", "<S-x>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

set("n", "<leader>rt", function()
  vim.cmd("ReferencerToggle")
end, { desc = "Toggle Referencer" })

set("n", "<leader>ru", function()
  vim.cmd("ReferencerUpdate")
end, { desc = "Update referencer" })

set("n", "<A-h>", "<C-w>h", { desc = "Go to Left Window" })
set("n", "<A-j>", "<C-w>j", { desc = "Go to Lower Window" })
set("n", "<A-k>", "<C-w>k", { desc = "Go to Upper Window" })
set("n", "<A-l>", "<C-w>l", { desc = "Go to Right Window" })

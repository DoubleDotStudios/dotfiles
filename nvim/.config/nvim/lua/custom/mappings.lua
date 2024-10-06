local M = {}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      'Update rust crates'
    }
  }
}

return M

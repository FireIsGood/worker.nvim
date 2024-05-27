local M = {}

--------------------------------------------------------------------------------

---@class UserHooks
---@field before_move? string[] | function | nil
---@field after_move? string[] | function | nil

---@class UserConfig
---@field workspaces string[]
---@field use_default_keymaps? boolean
---@field hooks? UserHooks

---@type UserConfig
local default_config = {
  workspaces = {},
  use_default_keymaps = true,
  hooks = {
    before_move = nil,
    after_move = nil,
  },
}

---@param user_config UserConfig
function M.setup(user_config)
  M.config = vim.tbl_deep_extend("force", default_config, user_config or {})

  return M.config
end

--------------------------------------------------------------------------------

return M

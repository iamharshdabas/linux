local opt = vim.opt
local g = vim.g

opt.cursorline = false
opt.sidescrolloff = 16
opt.scrolloff = 8
opt.backupcopy = "yes" -- for  bun --hot/watch to work properly

local function get_hyde_font()
  local theme_env = io.open(os.getenv("HOME") .. "/.local/share/hyde/theme-env", "r")
  if theme_env then
    local content = theme_env:read("*a")
    theme_env:close()

    local font = content:match("MONOSPACE_FONT=([^\n]+)")
    local size = content:match("MONOSPACE_FONT_SIZE=([^\n]+)")

    if font and size then
      -- remove quotes from font and size
      font = font:gsub('"', "")
      size = size:gsub('"', "")
      size = 14
      return font .. ":h" .. size
    end
  end
  return "CaskaydiaCove Nerd Font Mono:h16" -- fallback
end

opt.guifont = get_hyde_font()

g.neovide_opacity = 0.9
g.neovide_hide_mouse_when_typing = true
g.neovide_cursor_trail_size = 0.8
g.neovide_cursor_vfx_mode = "pixiedust"

if g.neovide then
  g.is_neovide = true
else
  g.is_neovide = false
end

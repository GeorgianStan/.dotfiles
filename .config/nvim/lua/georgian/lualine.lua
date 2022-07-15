local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup {
  options = {
    theme = 'everforest'
  },
  sections = {
    lualine_b={'branch', 'diff'}
  }
}

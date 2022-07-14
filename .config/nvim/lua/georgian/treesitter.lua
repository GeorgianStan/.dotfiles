local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed =  { "bash", "css", "graphql","html","javascript","json","pug","scss","typescript","yaml","lua"},
  sync_install = false, 
  ignore_install = { "" }, 
  highlight = {
    enable = true, 
    disable = { "" }, 
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true}, -- this is an expiremental feature
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  }
}

require'nvim-treesitter.install'.prefer_git = false
require'nvim-treesitter.install'.compilers = { "zig" }
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "help", 
    "lua", 
    "vim", 
    "c"
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}

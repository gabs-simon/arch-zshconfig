require('project_nvim').setup {
  patterns = { ".git", "Makefile", "package.json", "Cargo.toml" },
  silent_chdir = true,
}
require('telescope').load_extension('projects')

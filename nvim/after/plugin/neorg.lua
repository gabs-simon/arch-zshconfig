require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.journal"] = {
      config = {
        workspace = "notes",
        journal_folder = "Journal"
      }
    },
    ["core.concealer"] = {},
    ["core.dirman"] = {
      config = {
        workspaces = {
          note_root = "~/Dropbox/Notes"
        },
        default_workspace = "note_root"
      }
    },
  }
}


local function show_macro_recording()
  local macro = vim.fn.reg_recording()
  if macro == '' then
    return ''
  else
  return 'recording @' .. macro
  end
end

local lualine = require('lualine')

lualine.setup({
  extensions = { 'mason', 'nvim-tree', 'lazy', 'toggleterm' },
  sections = {
    lualine_b = {
      {
        "macro-recording",
        fmt = show_macro_recording,
        icon = "",
        color = 'Macro',
      },
      "branch",
      "diff",
      "diagnostics"
    },
    lualine_c = {
      {
        "filename",
        file_status = true,
        path = 1
      },
    }
  }
})

vim.api.nvim_create_autocmd("RecordingEnter", {
    callback = function()
        lualine.refresh({
            place = { "statusline" },
        })
    end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
    callback = function()
        -- This is going to seem really weird!
        -- Instead of just calling refresh we need to wait a moment because of the nature of
        -- `vim.fn.reg_recording`. If we tell lualine to refresh right now it actually will
        -- still show a recording occuring because `vim.fn.reg_recording` hasn't emptied yet.
        -- So what we need to do is wait a tiny amount of time (in this instance 50 ms) to
        -- ensure `vim.fn.reg_recording` is purged before asking lualine to refresh.
        local timer = vim.loop.new_timer()
        timer:start(
            50,
            0,
            vim.schedule_wrap(function()
                lualine.refresh({
                    place = { "statusline" },
                })
            end)
        )
    end,
})

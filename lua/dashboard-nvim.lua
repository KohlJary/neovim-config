local api = vim.api
local keymap = vim.keymap
local dashboard = require("dashboard")

dashboard.confirm_key = '<CR>'

dashboard.session_directory = vim.fn.stdpath('data') .. "/sessions"
dashboard.session_auto_save_on_exit = true

dashboard.custom_header = {
  "                                                       ",
  "                                                       ",
  "                                                       ",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "                                                       ",
  "                                                       ",
  "                                                       ",
  "                                                       ",
}

dashboard.custom_center = {
  {
    icon = '  ',
    desc = 'Load session                            ',
    shortcut = 's l',
    action ='SessionLoad'
  },
  {
    icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'DashboardFindHistory',
    shortcut = 'f h'
  },
  {
    icon = '  ',
    desc ='File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'f b'
  },
  {
    icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'f f'
  },
  {
    icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'f w'
  },
  {
    icon = "  ",
    desc = "Project grep                            ",
    action = "rg --popup",
    shortcut = "f g",
  },
  {
    icon = "  ",
    desc = "Open Nvim config                        ",
    action = "tabnew $MYVIMRC | tcd %:p:h",
    shortcut = "e v",
  },
  {
    icon = "  ",
    desc = "New file                                ",
    action = "enew",
    shortcut = "e           ",
  },
  {
    icon = "  ",
    desc = "Quit Nvim                               ",
    -- desc = "Quit Nvim                               ",
    action = "qa",
    shortcut = "q           ",
  },
}

api.nvim_create_autocmd('User', {
    pattern = 'DBSessionSavePre',
    callback = function()
      pcall(vim.cmd, 'NERDTreeClose')
    end,
})

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
  callback = function ()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
    keymap.set("n", "sl", ":SessionLoad<CR>", { buffer = true, silent = true })
    keymap.set("n", "fh", ":DashboardFindHistory<CR>", { buffer = true, silent = true })
    keymap.set("n", "fb", ":Telescope file_browser<CR>", { buffer = true, silent = true })
    keymap.set("n", "ff", ":Telescope find_files find_command=rg,--hidden,--files<CR>", { buffer = true, silent = true })
    keymap.set("n", "fw", ":Telescope live_grep<CR>", { buffer = true, silent = true })
  end
})

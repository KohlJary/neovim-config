require('dashboard').setup {
  theme = 'hyper',
  config = {
    week_header = {
     enable = true,
    },
    shortcut = {
      { desc = ' Update', group = '@property', action = 'PackerUpdate', key = 'u' },
      {
        desc = ' Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Open Last Session',
        group = 'Label',
        action = 'RestoreSession',
        key = 'r',
      },
      {
        desc = ' Prosession',
        group = 'Label',
        action = 'Prosession',
        key = 'p',
      },
      {
        desc = ' Apps',
        group = 'DiagnosticHint',
        action = 'Telescope app',
        key = 'a',
      },
      {
        desc = ' dotfiles',
        group = 'Number',
        action = 'Telescope dotfiles',
        key = 'd',
      },
    },
  },
}

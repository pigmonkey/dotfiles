## Set to confirm when you try to exit IPython with an EOF (Control-D in Unix,
#  Control-Z/Enter in Windows). By typing 'exit' or 'quit', you can force a
#  direct exit without any confirmation.
c.TerminalInteractiveShell.confirm_exit = False

## Shortcut style to use at the prompt. 'vi' or 'emacs'.
c.TerminalInteractiveShell.editing_mode = 'vi'

## Enable vi (v) or Emacs (C-X C-E) shortcuts to open an external editor. This is
#  in addition to the F2 binding, which is always enabled.
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True

# Keep your stinking paws off my cursor.
c.TerminalInteractiveShell.modal_cursor = False

# I don't know what Jedi is supposed to do, but it is ridiculously slow.
c.IPCompleter.use_jedi = False

# Don't try to reformat my slop.
c.TerminalInteractiveShell.autoformatter = None

# Use gruvbox dark colors.
c.TerminalInteractiveShell.highlighting_style = 'gruvbox-dark'

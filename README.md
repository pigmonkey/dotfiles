dotfiles
========

User preference and configuration files that I use to build my working environment.


config/awesome
--------------

[Awesome](http://awesome.naquadah.org/) configuration files.

Installed as `~/.config/awesome`


config/openbox
--------------

[OpenBox](http://openbox.org/) configuration and menu files.

Installed as `~/.config/openbox`


vim
---

[Vim](http://www.vim.org/) plugins. These should be loaded with [Pathogen](https://github.com/tpope/vim-pathogen).

Each plugin is a [git](http://git-scm.com/) submodule. When cloning this repository to a new machine, the submodules need to be initialized.

    $ git submodule update --init

Every submodule can be updated to the latest available version at once:

    $ git submodule foreach git pull origin master

Installed as `~/.vim`.


vimperator
----------

[Vimperator](http://www.vimperator.org/vimperator) configuration files, including colors and plugins.

Installed as `~/.vimperator`.


xmonad
------

[Xmonad](http://xmonad.org/) configuration files.

Installed as `~/.xmonad`.


abookrc
-------

Configuration for [abook](http://abook.sourceforge.net/).

Installed as `~/.abook/abookrc`


aliases
-------

Aliases for common programs, to be used in shells like [Zsh](http://www.zsh.org/) and [Bash](http://www.gnu.org/software/bash/bash.html).

Installed as `~/.aliases`.


bash_colors
-----------

System colors intended to be used in [Bash](http://www.gnu.org/software/bash/bash.html) prompts.

Installed as `~/.bash_colors`.


bashrc
------

Configuration for interactive [Bash](http://www.gnu.org/software/bash/bash.html).

Installed as `~/.bashrc`.


gitignore
---------

Rules for globally ignoring files in [git](http://git-scm.com/) repositories.

Installed as `~/.gitignore`.


profile
-------

Configuration for login shells, to be used in shells like [Zsh](http://www.zsh.org/) and [Bash](http://www.gnu.org/software/bash/bash.html).

For use with Bash, installed as `~/.bash_profile` or `~/.profile`.

For use with Zsh, installed as `~/.zprofile`.


shellrc
-------

Configuration for interactive shells. This is source by both [Zsh](http://www.zsh.org/) and [Bash](http://www.gnu.org/software/bash/bash.html).

Installed as `~/.shellrc`.


tmux.conf
---------

Configuration for [tmux](http://tmux.sourceforge.net/).

Installed as `~/.tmux.conf`.


todo.cfg
--------

Configuration for [todo.txt-cli](https://github.com/ginatrapani/todo.txt-cli).

Installed as `~/.todo.cfg`


vimperatorrc
------------

Configuration for [Vimperator](http://www.vimperator.org/vimperator).

Installed as ~/.vimperatorrc'.


vimrc
-----

Configuration for [Vim](http://www.vim.org/).

Installed as `~/.vimrc`.


xbindkeysrc
-----------

[Xbindkeys](http://www.nongnu.org/xbindkeys/xbindkeys.html) configuration file for desktop-agnostic key bindings.

Installed as `~/.xbindkeysrc`


xinitrc
-------

A script for building the desktop environment, read by `xinit` and `startx`.

Installed as `~/.xinitrc`.


xmobarrc
--------

Configuration file for [xmobar](http://projects.haskell.org/xmobar/).

Installed as `~/.xmobarrc`.


Xmodmap
--------

[Xmodmap](https://wiki.archlinux.org/index.php/Xmodmap) configuration file for remapping caps lock to left control.

Installed as `~/.Xmodmap`.


Xresources
----------

Configuration for X client applications, particularly [rxvt-unicode](http://software.schmorp.de/pkg/rxvt-unicode.html).


Installed as `~/.Xresources`.


zshrc
-----

Configuration for interactive and login [Zsh](http://www.zsh.org/).

Installed as `~/.zshrc`.

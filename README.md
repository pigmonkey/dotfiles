dotfiles
========

User preference and configuration files that I use to build my working environment.


config/redshift.conf
--------------------

Configuration for [Redshift](http://jonls.dk/redshift/)

Installed as `~/.config/redshift.conf`


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


abcde.conf
----------

Configuration for [A Better CD Encoder](http://lly.org/~rcw/abcde/page/).

Installed as `~/abcde.conf`.


abookrc
-------

Configuration for [abook](http://abook.sourceforge.net/).

Installed as `~/.abook/abookrc`.


gitignore
---------

Rules for globally ignoring files in [git](http://git-scm.com/) repositories.

Installed as `~/.gitignore`.


ledgerrc
--------

Configuration for [Ledger](http://ledger-cli.org/) accounting.

Installed as `~/.ledgerrc`.


pplconfig
---------

Configuration for [ppl](http://ppladdressbook.org/)

Installed as `~/.pplconfig`.


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

zprezto
-------

Fork of [the configuration framework for Zsh](https://github.com/pigmonkey/prezto).

Installed as `~/.zprezto`.

All files within `zprezto/runcoms/` should be linked into `~/`.

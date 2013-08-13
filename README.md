dotfiles
========

User preference and configuration files that I use to build my working environment.

This repository includes [git](http://git-scm.com/) submodules. When cloning to a new machine, the submodules need to be initialized.

    $ git submodule update --init

Every submodule can be updated to the latest available version at once:

    $ git submodule foreach git pull origin master


config/beets
------------

Configuration for [beets](http://beets.radbox.org/).

Installed as `~/.config/beets`


config/redshift.conf
--------------------

Configuration for [Redshift](http://jonls.dk/redshift/)

Installed as `~/.config/redshift.conf`


gnupg/gpg.conf
--------------

Configuration for [GnuPG](http://gnupg.org/)

Installed as `~/.gnupg/gpg.conf`


mutt
----

Additional configuration for [mutt](http://www.mutt.org/).

Installed as `~/.mutt/`


vim
---

Additional configuration for [Vim](http://www.vim.org/).

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


dircolors-solarized
-------------------

[Solarized](http://ethanschoonover.com/solarized) colors for [GNU ls](https://www.gnu.org/software/coreutils/manual/html_node/ls-invocation.html).

`dircolors-solarized/dircolors.ansi-dark` installed as `~/.dir_colors`.


gitignore
---------

Rules for globally ignoring files in [git](http://git-scm.com/) repositories.

Installed as `~/.gitignore`.


ledgerrc
--------

Configuration for [Ledger](http://ledger-cli.org/) accounting.

Installed as `~/.ledgerrc`.


msmtprc
-------

Configuration for the [msmtp](http://msmtp.sourceforge.net/) SMTP client.

Installed as `~/.msmtprc`.


muttrc
------

Configuration for [mutt](http://www.mutt.org/).

Installed as `~/.muttrc`.


offlineimap.py
--------------

Password loader for [OfflineIMAP](http://offlineimap.org/). The IMAP password is securely stored with [GnuPG](http://www.gnupg.org/)

Installed as `~/.offlineimap.py`.


offlineimaprc
-------------

Configuration for [OfflineIMAP](http://offlineimap.org/).

Installed as `~/.offlineimap.py`.


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

Installed as `~/.todo.cfg`.


urlview
-------

Configuration for [urlview](http://linuxcommand.org/man_pages/urlview1.html), a URL extractor/launcher.

Installed as `~/.urlview`.


vimperatorrc
------------

Configuration for [Vimperator](http://www.vimperator.org/vimperator).

Installed as ~/.vimperatorrc'.


vimrc
-----

Configuration for [Vim](http://www.vim.org/).

Installed as `~/.vimrc`.

Vim plugins are managed by [Vundle](https://github.com/gmarik/vundle). When
cloning this repository to a new machine Vundle must be installed and the
plugins loaded.

    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    $ vim +BundleInstall +qall


xbindkeysrc
-----------

[Xbindkeys](http://www.nongnu.org/xbindkeys/xbindkeys.html) configuration file for desktop-agnostic key bindings.

Installed as `~/.xbindkeysrc`.


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


zlogin
------

Login shell configuration for [Zsh](http://www.zsh.org/).

Installed as `~/.zlogin`.


zlogout
-------

[Zsh](http://www.zsh.org/) configuration for logging out of login shells.

Installed as `~/.zlogout`.


zprezto
-------

Fork of [the configuration framework for Zsh](https://github.com/pigmonkey/prezto).

Installed as `~/.zprezto/`.


zpreztorc
---------

Configuration for [prezto](https://github.com/pigmonkey/prezto).

Installed as `~/.zpreztorc`.


zprofile
--------

Login shell configuration for [Zsh](http://www.zsh.org/).

Installed as `~/.zprofile`.


zshenv
------

Environment configuration for [Zsh](http://www.zsh.org/).

Installed as `~/.zshenv`.


zshrc
-----

Interactive shell configuration for [Zsh](http://www.zsh.org/).

Installed as `~/.zshrc`.

dotfiles
========

User preference and configuration files that I use to build my working environment.

This repository includes [git](http://git-scm.com/) submodules. When cloning to a new machine, the submodules need to be initialized.

    $ git submodule update --init

Every submodule can be updated to the latest available version at once:

    $ git submodule foreach git pull origin master

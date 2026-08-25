# dotfiles

User preference and configuration files that I use to build my working environment.

This repository is managed with [chezmoi](https://www.chezmoi.io/).

## Setup

Install chezmoi, then point it at a checkout of this repository (e.g. by
setting `sourceDir` in `~/.config/chezmoi/chezmoi.toml`) and apply it:

```
$ chezmoi apply
```

External dependencies are fetched automatically by chezmoi via `.chezmoiexternal.toml`.

## Updating externals

```
$ chezmoi apply --refresh-externals=always
```

## tmux plugins

chezmoi cannot reliably run tpm's plugin installer automatically as part of
`apply` (tpm may not be fetched yet when the script would run), so install
tmux plugins manually once after the first apply on a new machine:

```
$ ~/.tmux/plugins/tpm/bin/install_plugins
```

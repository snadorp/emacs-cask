# emacs-cask
This repo contains my personal Emacs configuration. It's based on [Cask](https://github.com/cask/cask), the project management tool for Eamcs.

## Cask installation

OSX (homebrew)
```sh
brew install cask
```

Linux
```sh
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
```
## Usage

Get the inital packages via `cask`. Updating can be done by running `cask update`.

## Configuration files

Some packages need some fine tuning, this is done in the `configs` directory. Keybindings, custom functionality and machine configuration is located in `custom`.

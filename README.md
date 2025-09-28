# Dotfiles

My personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).
This setup works on both **macOS** and **Linux**.

---

## Structure

```
~/dotfiles/
├── nvim/
│   └── .config/
│       └── nvim/
│           ├── init.lua
│           └── lua/
│               └── plugins.lua
├── tmux/
│   └── .tmux.conf
└── zsh/
    └── .zshrc
```

* Each folder (e.g., `nvim/`, `tmux/`, `zsh/`) is a **package**.
* Inside each package, the directory structure mirrors the home directory (`~`).

---

## Installation

### 1. Clone this repo

```bash
git clone https://github.com/alcapon/dotfile.git ~/dotfile
```

### 2. Install GNU Stow

* macOS:

  ```bash
  brew install stow
  ```
* Debian/Ubuntu:

  ```bash
  sudo apt update && sudo apt install stow -y
  ```
* Fedora:

  ```bash
  sudo dnf install stow -y
  ```

### 3. Apply configs

```bash
stow nvim tmux zsh
```

This will create symlinks:

* `~/.config/nvim` → `~/dotfiles/nvim/.config/nvim`
* `~/.tmux.conf` → `~/dotfiles/tmux/.tmux.conf`
* `~/.zshrc` → `~/dotfiles/zsh/.zshrc`

---

## Updating configs

Edit the files in `~/dotfiles/...`, then commit & push:

```bash
git add .
git commit -m "Update configs"
git push
```

On another machine:

```bash
git pull
stow nvim tmux zsh
```

---

## Removing a package

To remove symlinks for a specific package:

```bash
stow -D tmux
```

---

## Notes

* Always run `stow` from the root of the repo (`~/dotfiles`).
* If there are conflicts (existing files), move them into the corresponding package before running `stow`.


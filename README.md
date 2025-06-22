# Dotfiles – bashrc by soyuz43

This repo contains my personal `.bashrc` file for Git Bash (Windows 11s). It's designed for developer productivity, with aliases and prompt customizations tailored for Git workflows and C#/Node projects.

## 🔧 Features

- Custom Git aliases:
  - `new` → create new branch
  - `bet` → commit changes
  - `yeet` → push current branch
  - `slay` → sync `main` and clean up local branches
- Dev-friendly prompt
- Minimal setup, portable between machines

## Setup

Clone this repo:

```bash
git clone git@github.com:soyuz43/dotfiles.git ~/workspace/dotfiles
````

Then symlink the `.bashrc` to your home directory:

```bash
rm ~/.bashrc             # Remove any existing file (if safe)
ln -s ~/workspace/dotfiles/bashrc ~/.bashrc
```

Reload the shell:

```bash
source ~/.bashrc
```

---

**Author:** [soyuz43](https://github.com/soyuz43)


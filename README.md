# 🛠️ Dotfiles – bashrc by soyuz43

This repo contains my personal `.bashrc` file for Git Bash (Windows). It's designed for developer productivity, with aliases and prompt customizations tailored for Git workflows and C#/Node projects.

## 🔧 Features

- Custom Git aliases:
  - `new` → create new branch
  - `bet` → commit changes
  - `yeet` → push current branch
  - `slay` → sync `main` and clean up local branches
- Dev-friendly prompt
- Minimal setup, portable between machines

## 🧪 Setup

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

## 🚀 Why

Keeping dotfiles version-controlled makes it easy to:

* Reproduce your dev environment on new machines
* Share useful shell tooling with others
* Track and refine your CLI workflow over time

---

**Author:** [soyuz43](https://github.com/soyuz43)


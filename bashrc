# =========================
# *=== General Settings ===
# =========================
HISTFILE=~/.bash_history
HISTSIZE=1000
HISTFILESIZE=1000

# =========================
# *=== Exports ===
# =========================

# Use VS Code as default editor for Git
export EDITOR='code --wait'

# =========================
# *=== Path Settings ===
# =========================

export PATH=$PATH:/c/home/copin43/.npm-packages/
export PATH=$PATH:"/c/Program Files (x86)/Go/bin"
export PATH="/c/Program Files/PostgreSQL/16/bin:$PATH"

# =========================
# *=== Prompt Settings ===
# =========================

# Define the conda_ps1 function
conda_ps1() {
  if [ -n "$CONDA_DEFAULT_ENV" ]; then
    echo "($(basename $CONDA_DEFAULT_ENV))"
  else
    echo ""
  fi
}


# ===================
# *=== Aliases ===
# ===================

# Clear the console
alias cl='clear'
# Source the shell

# Directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cpwd='pwd | clip'

# Custom aliases for git commands
alias gchm='git checkout main'
alias gpom='git pull origin main'
alias gs='git status'
alias vibes='git status'
alias slay='gchm && gpom && git del'
alias bet='git coa'
alias new='git switch -c'
alias pushcount='git reflog origin/main --date=iso | grep "$(date +%Y-%m-%d)" | grep 'push' | wc -l'
# gh case statement
yeet() {
  case $(git rev-parse --abbrev-ref HEAD) in
    main|master)
      echo "Pushing to main/master is not allowed with this command."
      ;;
    *)
      git push origin $(git rev-parse --abbrev-ref HEAD)
      ;;
  esac
}

# gh CLI aliases
alias issue='gh issue list'


alias c.='code .'
alias jserve='json-server database.json -p 8088'
alias bashrc='source ~/.bashrc'
alias why='history | tail -n 20 | bat --language=bash --style=numbers'
# Scripts for GIT
alias git-coa='bash /c/Users/thisi/BashScripts/git-add-commit.sh'
alias dbserve='bash /c/Users/thisi/BashScripts/dbserve.sh'
# 
alias initproject="/c/Users/thisi/BashScripts/initproject.sh"

alias obsidian='/c/Users/thisi/AppData/Local/Obsidian/Obsidian.exe'


# =========================
# * === Functions ===
# =========================
# Function to activate Conda environments
con() {
    if [ -z "$1" ]; then
        # No argument provided, activate the base environment
        echo "Activating base environment..."
        conda activate base
    else
        # Argument provided, check if the environment exists
        if conda env list | awk '{print $1}' | grep -q "^$1$"; then
            echo "Activating environment: $1"
            conda activate "$1"
        else
            # Environment does not exist
            echo "Error: Environment '$1' not found."
            return 1
        fi
    fi
}

# FIX SYMLINK NONSENSE
# 🛠 Ensure initproject symlink exists
ensure_initproject_symlink() {
  local source_win_path="C:\\Users\\thisi\\BashScripts\\initproject.sh"
  local target_win_path="C:\\Users\\thisi\\bin\\initproject"
  local unix_symlink_path="$HOME/bin/initproject"

  if [ ! -L "$unix_symlink_path" ]; then
    echo "[~/.bashrc] ⛓️ Attempting to create symlink for initproject..."

    powershell.exe -NoProfile -Command "
      \$source = '$source_win_path'
      \$target = '$target_win_path'
      try {
        New-Item -ItemType SymbolicLink -Path \$target -Target \$source -Force -ErrorAction Stop
        Write-Host '[!] Symlink successfully created.'
      } catch {
        Write-Host '[X] Symlink creation failed: Admin rights are required.'
      }
    "
  fi
}
ensure_initproject_symlink




# ==========================
# *=== Welcome Message ===
# ==========================

# Welcome message setup
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${GREEN}Welcome, ${BLUE}$USERNAME${NC}! Enjoy your coding session."

# ====================
# *===Enable Colors===
# ====================

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM=xterm-256color

# Define colors for different file types
alias ls='ls --color=auto'

# ====================
# *=== Shell Addons ===
# ====================

# Source Conda
source ~/anaconda3/etc/profile.d/conda.sh



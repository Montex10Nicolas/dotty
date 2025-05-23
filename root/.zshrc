if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/opt/nvim-linux-x86_64/bin
export PATH=$PATH:/usr/bin/cmake
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/jumong/.bun/bin
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$HOME/Applications/android-studio/bin:$PATH"
export PATH="~/.config/emacs/bin:$PATH"

export FLATPAK_DIR="/var/lib/flatpak/app"
export EDITOR="nvim"

export PNPM_HOME="/home/nicolas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias auu="sudo apt update && sudo apt upgrade"
alias sus="sudo zypper refresh && sudo zypper up"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias grep="rg"
alias ls="eza"
alias find="fdfind"
alias docker="echo 'use podman 시발'"


eval "$(tmuxifier init -)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_DISABLE_COMPFIX=true

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

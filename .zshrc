#-------------------
# ZSH CONFIGURATIONS
#-------------------
#
# Load ZSH configuration files and plugins in a logical order.
#

# --- 1. Zsh Frameworks and Core Settings ---
#
# Load the configuration framework and core settings first.

# Enable Powerlevel10k instant prompt. Should stay close to the top.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Manjaro's Zsh configuration.
#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi

# Load Oh My Zsh and its plugins.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    branch
    docker
    docker-compose
    fast-syntax-highlighting
    git
    golang
    mise
    python
    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    zsh-history-substring-search
)
source "$ZSH/oh-my-zsh.sh"

#
# --- 2. Custom Configurations ---
#
# Load personal and specific configurations.
# These files are typically created and managed by the user.
source ~/.config/zsh/shell
source ~/.config/zsh/init
source ~/.config/zsh/envs
source ~/.config/zsh/aliases
source ~/.config/zsh/inputrc
[[ -r ~/.config/zsh/secrets ]] && source ~/.config/zsh/secrets

# Load Omakub defaults.
# source ~/.local/share/omakub/defaults/zsh/rc

# Load custom completion settings.
#source ~/.config/zsh/completions.zsh
#source ~/.config/zsh/options.zsh

# --- 3. Environment Variables ---
#
# Define environment variables after loading frameworks and configs.

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

# --- 4. Final Touches and Application-specifics ---
#
# Load application-specific settings that rely on everything above.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

# Load mise (formerly asdf)
eval "$(mise activate zsh)"

# Setup prompt configuration to  enable quiet prompt avoiding p10k warning
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( "3den" "Soliah" "adben" "af-magic" "afowler" "agnoster" "alanpeabody" "amuse" "apple" "arrow" "aussiegeek" "avit" "awesomepanda" "bira" "blinks" "bureau" "candy-kingdom" "candy" "clean" "cloud" )

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 30

HIST_STAMPS="yyyy-mm-dd"

plugins=(gh git gitignore direnv zsh-navigation-tools zsh-syntax-highlighting zsh-autosuggestions)

# User configuration
HISTSIZE=10000       # Set the amount of lines you want saved
SAVEHIST=10000       # This is required to actually save them, needs to match with HISTSIZ

setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don\'t record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS         # Don\'t write duplicate entries in the history file.


alias rc="mate ~/.zshrc"
alias s="source ~/.zshrc"
alias e="source .env"
alias brm="~/rm-branch.sh"

# Uncomment for plugin troubleshoot.
# for plugin ($plugins); do
#   if [[ -d "$ZSH/custom/plugins/$plugin" ]]; then
#     echo "Custom plugin loaded: $plugin ($ZSH/custom/plugins/$plugin)"
#   elif [[ -d "$ZSH/plugins/$plugin" ]]; then
#     echo "Built-in plugin loaded: $plugin ($ZSH/plugins/$plugin)"
#   else
#     echo "Plugin not found: $plugin"
#   fi
# done

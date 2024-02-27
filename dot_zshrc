# Download Znap, if it's not there yet.
ZNAP_DIR=$HOME/.local/share/zsh/znap
[[ -r $ZNAP_DIR/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $ZNAP_DIR
source $ZNAP_DIR/znap.zsh  # Start Znap

# Use starship for prompt
znap eval starship 'starship init zsh'
znap prompt

HISTFILE=$HOME/.local/share/zsh/history

# Setup oh-my-sh
# Pull repo through znap and source base script
export ZSH="$HOME/.local/share/zsh/ohmyzsh/ohmyzsh"
plugins=(aliases cp fd git git-auto-fetch history python sudo ubuntu)
znap source ohmyzsh/ohmyzsh oh-my-zsh.sh

znap source marlonrichert/zsh-autocomplete

znap source marlonrichert/zsh-hist

ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source zsh-users/zsh-autosuggestions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting

# Use znap install for completions and functions
znap install zsh-users/zsh-completions

znap fpath _rustup 'rustup completions zsh'
znap fpath _cargo 'rustup completions zsh cargo'
znap fpath _starship 'starship completions zsh'

# Aliases
alias starwars='telnet towel.blinkenlights.nl'

alias ls=eza
alias cat=bat
alias du=dust 
alias find=fd
alias htop=btm
alias top=btm
alias ps=procs

# Download Znap, if it's not there yet.
ZNAP_DIR=$HOME/.local/share/znap
[[ -r $ZNAP_DIR/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $ZNAP_DIR
source $ZNAP_DIR/znap.zsh  # Start Znap

znap eval starship 'starship init zsh'
znap prompt

znap source ohmyzsh/ohmyzsh lib/git.zsh

znap source marlonrichert/zsh-autocomplete

znap source marlonrichert/zsh-hist

ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source zsh-users/zsh-autosuggestions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting

# Aliases
alias starwars='telnet towel.blinkenlights.nl'

alias ls=eza
alias cat=bat
alias du=dust 
alias find=fd
alias htop=btm
alias top=btm
alias ps=procs

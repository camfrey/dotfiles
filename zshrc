eval "$(starship init zsh)"

# For brew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

case $(uname -s) in
	Linux)
		source /usr/share/zsh/share/antigen.zsh
		;;
	*)
		source /opt/homebrew/share/antigen/antigen.zsh
		;;
esac

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle sudo
antigen bundle web-search
antigen bundle copyfile
antigen bundle copydir
antigen bundle history
antigen bundle macos
# Syntax highlighting bundle.
antigen bundle   zsh-users/zsh-syntax-highlighting

# Fish-like auto suggestions
antigen bundle   zsh-users/zsh-autosuggestions

# Extra zsh completions
antigen bundle   zsh-users/zsh-completions

# Tell antigen that you're done
antigen apply

# Aliases
alias starwars='telnet towel.blinkenlights.nl'

alias ls=eza
alias cat=bat
alias du=dust 
alias find=fd
alias htop=btm
alias top=btm
alias ps=procs

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

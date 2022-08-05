# For brew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

case $(uname -s) in
	Linux)
		source ~/Dotfiles/antigen.zsh
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

# Load the theme
antigen theme romkatv/powerlevel10k

# Tell antigen that you're done
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias kalix86='ssh 192.168.64.6'
alias starwars='telnet towel.blinkenlights.nl'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# =======================================================
# Basic aliases - should be cross platform or override below.
# =======================================================
alias grep="grep --color=auto"
alias pgrep='ps aux | grep -v grep | grep'
alias ss="open -a 'screen sharing'"
alias ls='ls -GF'
alias rm='nocorrect rm'
alias rvmc='rvm --create --ruby-version'

# =======================================================
# Override the basic aliases if we have GNU coreutils available
#   `brew install coreutils` to get these...
# =======================================================
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# =======================================================
# Linux specific aliases / fixes.
# =======================================================
if [[ "$(uname -s)" == "Linux" ]]
then
  alias ls="ls -GF --color"
  alias ge='vi'
fi

# =======================================================
# OSX specific aliases / fixes.
# =======================================================
if [[ "$(uname -s)" == "Darwin" ]]
then
  alias vi="mvim -v"
  alias ge='mvim --remote-tab-silent'
fi

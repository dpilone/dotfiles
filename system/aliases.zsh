# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias grep="grep --color=auto"
alias pgrep='ps aux | grep -v grep | grep'
alias ls="ls -GF --color"
alias ss="open -a 'screen sharing'"
alias ge='mvim --remote-silent'

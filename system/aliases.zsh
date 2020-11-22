# =======================================================
# Disable correction.
# =======================================================
alias ack='nocorrect ack'
alias cd='nocorrect cd'
alias cp='nocorrect cp'
alias ebuild='nocorrect ebuild'
alias gcc='nocorrect gcc'
alias gist='nocorrect gist'
alias grep='nocorrect grep'
alias heroku='nocorrect heroku'
alias ln='nocorrect ln'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias rm='nocorrect rm'

# =======================================================
# Disable globbing.
# =======================================================
alias fc='noglob fc'
alias find='noglob find'
alias ftp='noglob ftp'
alias history='noglob history'
alias locate='noglob locate'
alias rake='noglob rake'
alias rsync='noglob rsync'
alias scp='noglob scp'
alias sftp='noglob sftp'

# =======================================================
# Define general aliases.
# =======================================================
alias _='sudo'
alias b='${(z)BROWSER}'
alias cp="${aliases[cp]:-cp} -i"
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias ln="${aliases[ln]:-ln} -i"
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias mv="${aliases[mv]:-mv} -i"
alias p='${(z)PAGER}'
alias po='popd'
alias pu='pushd'
alias rm="${aliases[rm]:-rm} -i"
alias type='type -a'

# =======================================================
# Basic aliases - should be cross platform or override below.
# =======================================================
alias grep="grep --color=auto"
alias pgrep='ps aux | grep -v grep | grep'
alias ss="open -a 'screen sharing'"
alias ls='ls -GF'
alias rm='nocorrect rm'
alias rvmnew='rvm --create --ruby-version'
alias rvmc='rvm current'
alias rvmempty='rvm --force gemset empty'
alias be='bundle exec'

# =======================================================
# Setup to use a fancy top if available
# =======================================================
if (( $+commands[htop] )); then
  alias top='htop'
else
  alias topc='top -o cpu'
  alias topm='top -o vsize'
fi

# =======================================================
# Serves a directory via HTTP.
# =======================================================
alias http-serve='python -m SimpleHTTPServer'

# =======================================================
# Displays user owned processes status.
# =======================================================
function psu {
  ps -U "${1:-$USER}" -o 'pid,%cpu,%mem,command' "${(@)argv[2,-1]}"
}

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

  if (( $+commands[htop] )); then
    alias top='sudo htop'
  fi

  alias vim="mvim -v"
  alias ge='mvim --remote-tab-silent'

  # Custom Apple Silicon aliases
  if [[ "$(uname -m)" == "arm64" ]]; then
    alias ibrew='arch -x86_64 brew'
  fi
fi



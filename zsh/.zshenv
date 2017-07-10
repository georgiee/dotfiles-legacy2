# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# PATHS
export PATH=~/.bins:$PATH
export VISUAL='subl -w'
export EDITOR='subl -w'

export GOPATH="$HOME/.go"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

# export NPM_CONFIG_REGISTRY="https://nexus-3.ptc.onewebuxp.allianz/repository/npm-all/"

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
# alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gu="git branch -r --merged | grep origin | grep -v '>' | grep -v master | sed 's/origin\///'"

alias lockscreen='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"



# notwaldorf/tiny-care-terminal
# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
# export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'
export TTC_BOTS='ryugakueigobot,learnkanji,tinycarebot'

# Use this to have a different animal say a message in the big box.
export TTC_SAY_BOX='llama'

# The max directory-depth to look for git repositories in
# the directories defined with `TTC_REPOS`. Note that the deeper
# the directory depth, the slower the results will be fetched.
export TTC_REPOS_DEPTH=2

# Which method is to be used to read the git commits ('gitstandup' | 'gitlog').
# If you're having problems seeing your commits in the dahsboard, set
# this value to gitlog.
# export TTC_GITBOT='gitlog'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Munich'

# Set to false if you're an imperial savage. <3
export TTC_CELSIUS=true

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=true

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=20

# Turn off terminal title
export TTC_TERMINAL_TITLE=false


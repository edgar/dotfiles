export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.rbenv/bin:$PATH"
export GOPATH=$HOME/sandboxes/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# StreetEasy dockerbox
export OKTA_TEAM=dev
source $HOME/.dev_environment/bash_functions

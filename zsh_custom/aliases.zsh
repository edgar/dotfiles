alias iphone="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias gundo='git reset --soft HEAD~1'
alias gredo='git reset HEAD@{1}'
alias delete_merged_branches='git branch --merged master | grep -v master | xargs git branch -d'
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc"
alias reset_tty="stty icrnl"
alias pt=papertrail
alias docker-exited='docker ps -aq -f status=exited'
alias docker-rm-stopped='docker ps -aq --no-trunc -f status=exited | xargs docker rm'
alias gitclean='git clean -fxfd'
alias lc='colorls -lA --sd'
alias ping='prettyping --nolegend'


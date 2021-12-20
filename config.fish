set -g CDPATH . ~/Projects ~/Dropbox

set -U fish_user_paths /usr/local/bin $fish_user_paths

source ~/.localrc

# rbenv support fish shell
# https://github.com/rbenv/rbenv/issues/195
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null 2>&1

# postgres.app CLI tools
fish_add_path /Applications/Postgres.app/Contents/Versions/latest/bin

# Set the colors of directories and files https://stackoverflow.com/a/25563976
set -Ux LSCOLORS gxBxhxDxfxhxhxhxhxcxcx

# Set Editor
set -Ux EDITOR vim

### Aliases https://stackoverflow.com/a/2763014
alias b "bundle"
alias c "clear"
alias d "cd ~/Projects/dotfiles && vim ."
alias g "git"
alias j "jrnl"
alias p "cd ~/Projects && ls"
alias t "tmux"
alias u "cd .."
alias v "vim ."

# ls
alias ls "ls -laAFGh"
alias ll "ls -l"
alias la 'ls -A'

# git
alias gl "git pull"
alias glr "git pull --rebase"
alias gp 'git push'
alias gpom 'git push origin master'
alias gphm 'git push heroku master'
alias gpoh 'git push origin head'
alias gpohm 'git push origin master && git push heroku master'
alias gc 'git commit'
alias gcam 'git commit --all -m'
alias gcm 'git checkout master'
alias gco 'git checkout'
alias gb 'git branch'
alias gbd 'git branch -d'
alias gs 'git status'
alias grp 'git remote prune origin'
alias gls 'git log --stat'
alias gwtf "git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname)' | cut -d / -f 3-"
alias gca "git commit --amend"
alias gra "git rebase --abort"
alias grc "git rebase --continue"
alias gmc "git merge --continue"

# git diff
alias gd "git diff"
alias gds "git diff --staged"
alias gdh "git diff HEAD" # diff the unstaged changes
alias gdm "git diff master"
alias gdms "git diff master --stat"
alias gdmss "git diff master --shortstat"

# tmux
alias tls "tmux ls"



##### FUNCTIONS #####

function dict
  open dict:///"$argv"
end

### Ruby time
alias bers "bundle exec rails server"
alias berc "bundle exec rails console"

function be
  bundle exec $argv
end

function bersp
  bundle exec rspec $argv
end

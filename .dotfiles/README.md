# Txor dotfiles
Setup from https://www.atlassian.com/git/tutorials/dotfiles

```
git init --bare $HOME/.dotfiles_git
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles_git/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config remote add origin ssh://git@git.txor.org:2224/dotfiles
config fetch --all
config reset --hard origin/master
config branch --set-upstream-to=origin/master master
config submodule init
config submodule update --recursive --remote
```

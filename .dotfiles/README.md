# Txor dotfiles
Setup from https://www.atlassian.com/git/tutorials/dotfiles

## Manual steps for initial setup
```
git init --bare $HOME/.dotfiles_git
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles_git/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config remote add origin git@github.com:txor/dotfiles.git
config fetch --all
config reset --hard origin/master
config branch --set-upstream-to=origin/master master
config submodule init
config submodule update --recursive --remote
.dotfiles/setup.sh
vim +'PluginUpdate' +qa
.dotfiles/youcompleteme_install.sh
.dotfiles/powerline_install.sh
.dotfiles/instant-markdown-d_install.sh
```

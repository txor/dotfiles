# From https://powerline.readthedocs.io/en/latest/installation.html#repository-root
pip install --user --editable=$HOME/.dotfiles_gitsubmodules/powerline
ln -s $HOME/.dotfiles_gitsubmodules/powerline/scripts/powerline ~/.local/bin

# From https://powerline.readthedocs.io/en/master/installation/linux.html#fontconfig
mkdir -p ~/.local/share/fonts/
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

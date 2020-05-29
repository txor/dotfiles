# Update vim plugins berfore this: vim +'PluginUpdate' +qa

# From https://powerline.readthedocs.io/en/latest/installation.html#repository-root
POWERLINE_PATH=$HOME/.vim/bundle/powerline
pip install --user --editable=$POWERLINE_PATH
pip install --user powerline-gitstatus
ln -s $POWERLINE_PATH/scripts/powerline ~/.local/bin

# From https://powerline.readthedocs.io/en/master/installation/linux.html#fontconfig
mkdir -p ~/.local/share/fonts/
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

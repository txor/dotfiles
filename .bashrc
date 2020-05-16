export PATH=$PATH:~/bin:~/.local/bin

if [ -d $HOME/.bashrc.d ] ; then
    # Load aliases
    for alias in `find $HOME/.bashrc.d -name alias*.sh` ; do
        . $alias
    done
    # Load setups
    for setup in `find $HOME/.bashrc.d -name setup*.sh` ; do
        . $setup
    done
fi

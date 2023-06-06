BASHRC=".bashrc"
BASHRC_LIB=".bashrclib"
BASHRC_LIB_PATH="${HOME}/${BASHRC_LIB}"
if [ ! -L "${BASHRC_LIB_PATH}" ] ; then
    echo "Boot strapping our homesick bashrc lib"
    ln -sv ~/.homesick/repos/dotfiles/home/$BASHRC_LIB ${BASHRC_LIB_PATH}
fi

source $BASHRC_LIB_PATH


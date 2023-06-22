ADASHOMESHICK_PREFIX=dot
ADASHOMESHICK_NAME=adashomeshick
HOMESHICK_MAIN=$ADASHOMESHICK_NAME

BASHRC_NAM=".bashrc"
BASHRC_HME="${HOME}/${BASHRC_NAM}"
BASHRC_SRC="${ADASHOMESHICK_PREFIX}${BASHRC_NAM}"
BASHRC_DST="${BASHRC_HME}"

BASHRC_LIB_NAM=".bashrclib"
BASHRC_LIB_HME="${HOME}${BASHRC_LIB_NAM}"
BASHRC_LIB_SRC="${ADASHOMESHICK_PREFIX}${BASHRC_LIB_NAM}"
BASHRC_LIB_DST="${BASHRC_LIB_HME}"


BASHRC_LIB_SRC_PATH="${HOME}/.homesick/repos/$HOMESHICK_MAIN/home/${BASHRC_LIB_SRC}"

if [ -e ${BASHRC_LIB_DST} ] ; then
	echo "[*] BASHRC_LIB_DST = ${BASHRC_LIB_DST} $(file ${BASHRC_LIB_DST})"
else
	echo "[F] BASHRC_LIB_DST = \"${BASHRC_LIB_DST}\" doesn't exist!"
fi

if [ -e ${BASHRC_LIB_SRC_PATH} ] ; then
	echo "[*] BASHRC_LIB_SRC_PATH = ${BASHRC_LIB_SRC_PATH} $(file ${BASHRC_LIB_SRC_PATH})"
else
	echo "[F] BASHRC_LIB_SRC_PATH = \"${BASHRC_LIB_SRC_PATH}\" doesn't exist!"
fi

if [ ! -L "${BASHRC_LIB_DST}" ] ; then
    echo "[*] Boot strapping our homesick bashrc lib"
    echo "[*] ln -sv ${BASHRC_LIB_SRC_PATH} ${BASHRC_LIB_DST}"
    ln -sv ${BASHRC_LIB_SRC_PATH} ${BASHRC_LIB_DST}
fi

echo "[*] source $BASHRC_LIB_SRC_PATH"
source $BASHRC_LIB_SRC_PATH


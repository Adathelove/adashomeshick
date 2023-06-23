#!/usr/bin/bash

ADASHOMESHICK_PREFIX=dot
ADASHOMESHICK_NAME=adashomeshick
HOMESHICK_MAIN=$ADASHOMESHICK_NAME

BASHRC_NAM=".bashrc"
BASHRC_HME="${HOME}/${BASHRC_NAM}"
BASHRC_SRC="${ADASHOMESHICK_PREFIX}${BASHRC_NAM}"
BASHRC_DST="${BASHRC_HME}"

BASHRC_LIB_NAM=".bashrclib"
BASHRC_LIB_HME="${HOME}/${BASHRC_LIB_NAM}"
BASHRC_LIB_SRC="${ADASHOMESHICK_PREFIX}${BASHRC_LIB_NAM}"
BASHRC_LIB_DST="${BASHRC_LIB_HME}"

BASHRC_LIB_SRC_PATH="${HOME}/.homesick/repos/$HOMESHICK_MAIN/home/${BASHRC_LIB_SRC}"

function dot_bashrc_isdebug()
{
    [ -z "$DOT_BASHRC_ISDEBUG" ] && return 1
}

if [ -e ${BASHRC_LIB_DST} ] ; then
    dot_bashrc_isdebug && echo "[*] BASHRC_LIB_DST = ${BASHRC_LIB_DST} $(file ${BASHRC_LIB_DST})"
else
    dot_bashrc_isdebug && echo "[F] BASHRC_LIB_DST = \"${BASHRC_LIB_DST}\" doesn't exist!"
fi

if [ -e ${BASHRC_LIB_SRC_PATH} ] ; then
    dot_bashrc_isdebug && echo "[*] BASHRC_LIB_SRC_PATH = ${BASHRC_LIB_SRC_PATH} $(file ${BASHRC_LIB_SRC_PATH})"
else
    dot_bashrc_isdebug && echo "[F] BASHRC_LIB_SRC_PATH = \"${BASHRC_LIB_SRC_PATH}\" doesn't exist!"
fi

if [ ! -L "${BASHRC_LIB_DST}" ] ; then
    dot_bashrc_isdebug && echo "[*] Boot strapping our homesick bashrc lib"
    dot_bashrc_isdebug && echo "[*] ln -sv ${BASHRC_LIB_SRC_PATH} ${BASHRC_LIB_DST}"
    ln -sv ${BASHRC_LIB_SRC_PATH} ${BASHRC_LIB_DST}
fi

dot_bashrc_isdebug && echo "[*] source BASHRC_LIB_HME = \"${BASHRC_LIB_HME}\""
source $BASHRC_LIB_HME
alias basheditbashrclib="vi ${BASHRC_LIB_HME}"

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

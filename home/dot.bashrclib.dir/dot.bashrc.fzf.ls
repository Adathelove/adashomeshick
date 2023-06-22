#!/usr/bin/bash

FZF_PREFERED_SORT="--tac"
FZF_OPTS="$FZF_PREFERED_SORT"
FZF="fzf $FZF_OPTS"
FZF_NO_SORT="$FZF --no-sort"

alias lsltraf="lsltra | $FZF_NO_SORT"
alias lsltrf="lsltr | $FZF_NO_SORT"
alias lslf="lsl | $FZF_NO_SORT"
alias ls1traf="ls1tra | $FZF_NO_SORT"
alias ls1trf="ls1tr | $FZF_NO_SORT"
alias ls1f="ls1 | $FZF_NO_SORT"

alias lsltrafv="vi \$(lsltraf)"
alias lsltrfv="vi \$(lsltrf)"
alias lslfv="vi \$(lslf)"
alias ls1trafv="vi \$(ls1traf)"
alias ls1trfv="vi \$(ls1trf)"
alias ls1fv="vi \$(ls1f)"

#!/bin/bash

_bcp_strc() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FUNCNAME} :: bcp mirror ~/.st.rc.d to ${REPO_PATH}/st_rc_d/.d/.st.rc.d
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : body    : _edit ${HOME}/.st.rc.d/.st.sh.d/_bcp_strc.sh
    _t : tst_dir : _edit ${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst.d
EXAM: 
    ${FUNCNAME}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.st.rc.d/.st.sh.d/_bcp_strc.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst.d
        return 0
    fi

    if _is_yes "DO? COPY with DELETE ~.st.rc.d TO ${REPO_PATH}/st_rc_d/.d/.st.rc.d"; then
        if ! _dSYd ${HOME}/.st.rc.d ${REPO_PATH}/st_rc_d/.d/.st.rc.d; then
            plt_exit "in fs= file://${HOME}.st.rc.d/.st.sh.d/_bcp_strc.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_dSYd ${HOME}/.st.rc.d ${REPO_PATH}/st_rc_d/.d/.st.rc.d' : ${hint} : return 1"
            return 1

        fi
    fi

    return 0

}

#!/bin/bash

#. "${HOME}/.bashrc"

filename="${REPO_PATH}/mane/.d/.arb/lib0.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

bcp_strc_ml0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    # [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    # [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTLS:
required
optional 
CNTL inspect : -h, _man, _go, _list
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: (process | subprocess (no read pause only plt_err return $errno) | interpritator)
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
WARN: 
DEBUG:
EXAMP:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}
    if [[ "_man" == "$1" ]]; then
        _edit "${d_name}/${FNN}".man
        return 0
    fi
    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi
    if [[ "_lst" == "$1" ]]; then
        _edit "${d_name}/${FNN}".lst
        return 0
    fi
    if [[ "_head" == "$1" ]]; then
        echo "_head fn: ${d_name}/${FNN}"
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${REPO_PATH}/mane/.d/.arb/lib0.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

}

cd "${idir}"
unset filename
#{post_fn}

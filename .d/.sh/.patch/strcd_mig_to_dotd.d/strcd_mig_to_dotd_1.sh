#!/bin/bash

read -p "DO? strcd_mig_to_dotd"

# if ! [[ -d ${HOME}/.d/.rc.d ]]; then
#     mkdir -p ${HOME}/.d/.rc.d
# fi

# if ! [[ -d ${HOME}/.d/.path.d ]]; then
#     mkdir -p ${HOME}/.d/.path.d
# fi

# #* tst st.sh.d.res

# # cd ${HOME}/REPOBARE/_repo/mane/.d/.sh/.patch/strcd_mig_to_dotd.d/tst.dir || {
# #     echo "EXEC_FAIL : cd ${HOME}/REPOBARE/_repo/mane/.d/.sh/.patch/strcd_mig_to_dotd.d/tst.dir" >&2
# #     return 1
# # }

# # rm -r .st.sh.d.res
# # cp -r ./.st.sh.d.init/. ./.st.sh.d.res

# # _s2ad "/.st.rc.d" "/.d/.rc.d/.st.rc.d" ".st.sh.d.res"
# #*

# #* do /.st.rc.d
# rm -r ${HOME}/.d/.rc.d/.st.rc.d
# cp -r ${HOME}/.st.rc.d/. ${HOME}/.d/.rc.d/.st.rc.d

# #! mv ${HOME}/.st.rc.d ${HOME}/~.st.rc.d~

# _s2ad "/.st.rc.d" "/.d/.rc.d/.st.rc.d" ${HOME}/.d/.rc.d/.st.rc.d
# #*

# #* tst ~.bashrc~
# # rm ${HOME}/~.bashrc~
# # mv ${HOME}/.bashrc ${HOME}/~.bashrc~
# # _s2f "/.st.rc.d" "/.d/.rc.d/.st.rc.d" ${HOME}/~.bashrc~
# #*

# #* do .bashrc
# #! mv ${HOME}/.bashrc ${HOME}/~.bashrc~

# #! _s2f "/.st.rc.d" "/.d/.rc.d/.st.rc.d" ${HOME}/~.bashrc~
# #*

#* do .mane.rc
rm ${HOME}/.d/.rc.d/.mane.rc
cp ${HOME}/.mane.rc ${HOME}/.d/.rc.d
#! mv ${HOME}/.mane.rc ${HOME}/~.mane.rc~

#* do .mane.rc
rm ${HOME}/.d/.rc.d/.st_rc_d.rc
cp ${HOME}/.st_rc_d.rc ${HOME}/.d/.rc.d
#! mv ${HOME}/.st_rc_d.rc ${HOME}/~.st_rc_d.rc~


_s2f /.mane.rc /.d/.rc.d/.mane.rc  ${HOME}/.d/.rc.d/.st.rc.d/.st.lst
_s2f /.st_rc_d.rc /.d/.rc.d/.st_rc_d.rc  ${HOME}/.d/.rc.d/.st.rc.d/.st.lst
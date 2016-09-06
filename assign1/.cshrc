#
#
#     chhrc.new
#
#
#








#  cutoff
if ( $?USER == 0 || $?prompt == 0 ) exit

set history=100
set ignoreeof
alias cs3423 "cd ~/courses/cs/3423"
set cspath=( ~/courses/cs ~ )
setenv SUB_cs3423 'section1'
alias ts 'eval `tset -s \!*`'
alias locate "locate -d /var/lib/mlocate/mlocate.db:/usr/local/mlocate/mlocate.db"

setenv OSTYPE `/bin/uname -s`
if ( $OSTYPE == "Linux" ) then
 setenv PATH ~/bin:/usr/local/turnin:${USRLOCAL}:${JDK}:${SYSTEM}:${FACBIN}:/home/maynard/bin:.

endif
 

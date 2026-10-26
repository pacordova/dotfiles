# /etc/profile

umask 022

LANG=en_US.UTF-8

PATH=\
/opt/R/4.6.1/bin:\
/opt/cmake/bin:\
/opt/perl5/bin:\
/opt/python3.14/bin:\
/usr/bin:\
/bin

PS1='\h \W \$ '
XDG_RUNTIME_DIR=/run/user/$(id -u)

export LANG PATH PS1 XDG_RUNTIME_DIR

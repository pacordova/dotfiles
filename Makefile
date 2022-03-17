VIMPATH=${HOME}/.config/vim
STPATH=${HOME}/.git/st
FLIST=xinitrc tmux.conf rcrc vimrc inputrc\
	  config/bspwm/bspwmrc\
	  config/sxhkd/sxhkdrc
VILIST=tpope/vim-commentary weakish/rcshell.vim

.PHONY: pathogen

default: install

all: uninstall vim st

pathogen:
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle
	curl -LSso ${VIMPATH}/autoload/pathogen.vim http://tpo.pe/pathogen.vim

st:
	rm -rf ${HOME}/.git/st
	git clone --depth=1 https://git.suckless.org/st ${HOME}/.git/st
	install st.h ${HOME}/.git/st/config.h
	make -C ${HOME}/.git/st install PREFIX=${PREFIX}

vim: install pathogen
	for v in ${VILIST}; do\
		git clone http://github.com/$$v ${VIMPATH}/bundle/`basename $$v`;\
	done

uninstall:
	for f in ${FLIST}; do rm -f ${HOME}/.$$f; done
	rm -rf ${VIMPATH} ${STPATH}

install:
	for f in ${FLIST};do install -D `basename $$f` ${HOME}/.$$f;done

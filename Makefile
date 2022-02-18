VIMPATH=${HOME}/.config/vim
STPATH=${HOME}/.git/st
FLIST=xinitrc tmux.conf rcrc vimrc config/user-dirs.dirs inputrc config/bspwm/bspwmrc config/sxhkd/sxhkdrc
VILIST=tpope/vim-commentary weakish/rcshell.vim

.PHONY: pathogen

all: uninstall install

pathogen:
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle
	curl -LSso ${VIMPATH}/autoload/pathogen.vim http://tpo.pe/pathogen.vim

st:
	git clone --depth=1 https://git.suckless.org/st ${HOME}/.git/st
	install st.h ${HOME}/.git/st/config.h
	make PREFIX=${HOME}/.local -C ${HOME}/.git/st install

uninstall:
	for f in ${FLIST}; do rm -f ${HOME}/.$$f; done
	rm -rf ${VIMPATH} ${STPATH}

install: pathogen
	for f in ${FLIST};do install -D `basename $$f` ${HOME}/.$$f;done
	for v in ${VILIST}; do\
		git clone http://github.com/$$v ${VIMPATH}/bundle/`basename $$v`;\
	done

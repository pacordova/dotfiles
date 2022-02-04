VIMPATH=${HOME}/.config/vim
FLIST=xinitrc tmux.conf rcrc vimrc config/user-dirs.dirs inputrc
VILIST=tpope/vim-commentary weakish/rcshell.vim

.PHONY: ${FLIST} ${VILIST} pathogen

all: uninstall install

pathogen:
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle
	curl -LSso ${VIMPATH}/autoload/pathogen.vim http://tpo.pe/pathogen.vim

uninstall:
	for f in ${FLIST};do rm ${HOME}/.$$f;done;rm -rf ${VIMPATH} || true

install: pathogen
	for f in ${FLIST};do install -D `basename $$f` ${HOME}/.$$f;done
	for v in ${VILIST}; do\
		git clone http://github.com/$$v ${VIMPATH}/bundle/`basename $$v`;\
	done

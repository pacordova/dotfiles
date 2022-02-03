VIMPATH=${HOME}/.config/vim
FLIST= \
	xinitrc tmux.conf rcrc vimrc \
	config/user-dirs.dirs inputrc
VILIST= \
	tpope/vim-commentary \
	weakish/rcshell.vim \


.PHONY: ${FLIST} ${VILIST} pathogen

all: uninstall install

${FLIST}:
	make TARG=$@ ${λ}

${VILIST}: pathogen
	git clone\
		--recurse-submodules\
	 	--depth=1\
 		http://github.com/$@\
		${VIMPATH}/bundle/`basename $@`\
		2>/dev/null;\

pathogen:
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle
	curl -LSso ${VIMPATH}/autoload/pathogen.vim 'http://tpo.pe/pathogen.vim'

snarf:
	install -D `basename ${TARG}` ${HOME}/.${TARG}

rm:
	rm ${HOME}/.${TARG}

uninstall:
	make λ=rm ${FLIST}
	rm -rf ${VIMPATH} 2>/dev/null || true

install:
	make λ=snarf ${FLIST} ${VILIST}

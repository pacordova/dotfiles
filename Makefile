VIMPATH=${HOME}/.config/vim
FLIST= \
	xinitrc tmux.conf rcrc vimrc \
	config/user-dirs.dirs inputrc
VILIST= \
	tpope/vim-commentary \
	weakish/rcshell.vim \

INSTALL=install -D `basename $$@` ${HOME}/.$$@
CLEAN=rm ${HOME}/.$$@ 2>/dev/null || true

.PHONY: ${FLIST} ${VILIST} pathogen

all: clean install

${FLIST}:
	${COMMAND}

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

clean:
	make COMMAND='${CLEAN}' ${FLIST}
	rm -rf ${VIMPATH} 2>/dev/null || true

install:
	make COMMAND='${INSTALL}' ${FLIST} ${VILIST}

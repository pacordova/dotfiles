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

uninstall:
	{for f in ${FLIST};do rm $$f;done;rm -rf ${VIMPATH}} || true

install:
	for f in ${FLIST}; do install -D `basename $$f` ${HOME}/.$$f; done

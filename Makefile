vimpath=${HOME}/.config/vim
flist= \
	xinitrc tmux.conf rcrc vimrc \
	config/user-dirs.dirs inputrc
vilist= \
	tpope/vim-commentary \
	weakish/rcshell.vim \
	liuchengxu/space-vim-dark

install: all vim

all:
	for f in ${flist}; do install -D `basename $$f` ${HOME}/.$$f; done

vim:
	mkdir -p ${vimpath}/autoload ${vimpath}/bundle
	curl -LSso ${vimpath}/autoload/pathogen.vim 'http://tpo.pe/pathogen.vim'
	for p in ${vilist}; do \
		git clone \
			--recurse-submodules \
		 	--depth=1 \
 			http://github.com/$$p \
			${vimpath}/bundle/`basename $$p` \
			2>/dev/null; \
	done

clean:
	for f in ${flist}; do rm ${HOME}/.$$f 2>/dev/null; done
	rm -rf ${vimpath} 2>/dev/null

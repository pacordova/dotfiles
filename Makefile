VIMPATH=${HOME}/.config/vim
STPATH=${HOME}/Downloads/st
FLIST=xinitrc tmux.conf rcrc inputrc bashrc\
	  config/bspwm/bspwmrc\
	  config/sxhkd/sxhkdrc\

all: install 

st:
	rm -fr ${HOME}/.git/st
	git clone --depth=1 https://git.suckless.org/st ${HOME}/.git/st
	install st.h ${HOME}/.git/st/config.h
	sudo make -C ${HOME}/.git/st install PREFIX=/usr CC=cc CFLAGS="$(CFLAGS)"

vim:
	rm -fr ${VIMPATH}
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle ${VIMPATH}/colors
	curl -LSso ${VIMPATH}/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/weakish/rcshell.vim ${VIMPATH}/bundle/rcshell.vim
	git clone https://github.com/tpope/vim-commentary ${VIMPATH}/bundle/commentary.vim
	cp acme.vim ${VIMPATH}/colors
	cp vimrc ${HOME}/.vimrc

clean:
	for f in ${FLIST}; do rm -fr ${HOME}/.$$f; done
	rm -fr ${VIMPATH} ${STPATH}

install:
	mkdir -p ${HOME}/.config/bspwm 
	mkdir -p ${HOME}/.config/sxhkd
	cp xinitrc   ${HOME}/.xinitrc
	cp tmux.conf ${HOME}/.tmux.conf
	cp rcrc      ${HOME}/.rcrc
	cp inputrc   ${HOME}/.inputrc
	cp bashrc    ${HOME}/.bashrc
	cp bashrc    ${HOME}/.bash_profile
	cp bspwmrc   ${HOME}/.config/bspwm
	cp sxhkdrc   ${HOME}/.config/sxhkdrc
	pkill sxhkd && sxhkd &

VIMPATH=${HOME}/.config/vim
STPATH=${HOME}/Downloads/st
FLIST=xinitrc tmux.conf rcrc vimrc inputrc bashrc\
	  config/bspwm/bspwmrc\
	  config/sxhkd/sxhkdrc\
	  config/vim/colors/spac.vim

all: install 

st:
	rm -rf ${HOME}/.git/st
	git clone --depth=1 https://git.suckless.org/st ${HOME}/.git/st
	install st.h ${HOME}/.git/st/config.h
	sudo make -C ${HOME}/.git/st install PREFIX=/usr CC=cc CFLAGS="$(CFLAGS)"

clean:
	for f in ${FLIST}; do rm -f ${HOME}/.$$f; done
	rm -rf ${VIMPATH} ${STPATH}

install:
	for f in ${FLIST};do install -D `basename $$f` ${HOME}/.$$f;done
	ln -sf ${HOME}/.bashrc ${HOME}/.bash_profile
	pkill sxhkd && sxhkd &

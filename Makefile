XDG_DOWNLOAD_DIR=${HOME}/Downloads
XDG_CONFIG_HOME=${HOME}/.config
VIMPATH=${HOME}/.config/vim

DOTFILES=\
	${HOME}/.bash_profile\
	${HOME}/.bashrc\
   	${HOME}/.inputrc\
	${HOME}/.rcrc\
	${HOME}/.tmux.conf\
   	${HOME}/.vimrc\
   	${HOME}/.xinitrc\
   	${VIMPATH}/colors/acme.vim\
	${XDG_CONFIG_HOME}/bspwm/bspwmrc\
	${XDG_CONFIG_HOME}/sxhkd/sxhkdrc\

all: install 

${HOME}/.bash_profile: bashrc
	cp bashrc $@

${HOME}/.bashrc: bashrc
	cp bashrc $@

${HOME}/.inputrc: inputrc
	cp inputrc $@

${HOME}/.rcrc: rcrc
	cp tmux.conf $@

${HOME}/.tmux.conf: tmux.conf
	cp tmux.conf $@

${HOME}/.vimrc: vimrc
	cp vimrc $@

${HOME}/.xinitrc: xinitrc
	cp xinitrc $@

${VIMPATH}/colors/acme.vim: acme.vim
	mkdir -p ${VIMPATH}/colors
	cp acme.vim $@

${XDG_CONFIG_HOME}/bspwm/bspwmrc: bspwmrc
	cp bspwmrc $@

${XDG_CONFIG_HOME}/sxhkd/sxhkdrc: sxhkdrc
	cp sxhkdrc $@

${XDG_DOWNLOAD_DIR}/st:
	rm -fr ${XDG_DOWNLOAD_DIR}/st
	git clone --depth=1 https://git.suckless.org/st ${XDG_DOWNLOAD_DIR}/st

st: ${XDG_DOWNLOAD_DIR}/st
	make -C ${XDG_DOWNLOAD_DIR}/st clean
	cp st.h ${XDG_DOWNLOAD_DIR}/st/config.h
	sudo make -C ${XDG_DOWNLOAD_DIR}/st install PREFIX=/usr CC=cc CFLAGS="$(CFLAGS)"

pathogen:
	rm -fr ${VIMPATH} 
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle
	curl -LSso ${VIMPATH}/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/weakish/rcshell.vim ${VIMPATH}/bundle/rcshell.vim
	git clone https://github.com/tpope/vim-commentary ${VIMPATH}/bundle/commentary.vim

clean:
	for f in ${DOTFILES}; do rm $$f; done
	rm -fr ${VIMPATH} ${XDG_DOWNLOAD_DIR}/st

install: ${DOTFILES}
	pkill sxhkd && sxhkd &

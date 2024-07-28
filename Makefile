FIREFOX=$(HOME)/.mozilla/firefox/*.dev-edition-default
#FIREFOX=$(HOME)/.mozilla/firefox/*.default-release

all:

install: install-firefox
	install vimrc $(HOME)/.vimrc
	install inputrc $(HOME)/.inputrc
	install xinitrc $(HOME)/.xinitrc
	install bashrc $(HOME)/.bashrc
	ln -sf .bashrc $(HOME)/.bash_profile

install-firefox:
	if test `pgrep firefox`; then pkill firefox; fi
	rm -fr $(FIREFOX)/* 
	install user.js $(FIREFOX)

uninstall:
	rm -f ${HOME}/.bashrc 
	rm -f ${HOME}/.vimrc 
	rm -f ${HOME}/.inputrc 
	rm -f ${HOME}/.xinitrc

clean:
	find . -name \*~ -delete

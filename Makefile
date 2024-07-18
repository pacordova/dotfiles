FIREFOX=$(HOME)/.mozilla/firefox/*.dev-edition-default
#FIREFOX=$(HOME)/.mozilla/firefox/*.default-release

all:

install:
	install bashrc $(HOME)/.bashrc
	install vimrc $(HOME)/.vimrc
	install inputrc $(HOME)/.inputrc
	install xinitrc $(HOME)/.xinitrc
	#pkill firefox && rm -f $(FIREFOX)/* && install user.js $(FIREFOX)

uninstall:
	rm -f ${HOME}/.bashrc 
	rm -f ${HOME}/.vimrc 
	rm -f ${HOME}/.inputrc 
	rm -f ${HOME}/.xinitrc

clean:
	find . -name \*~ -delete

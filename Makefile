FIREFOX=$(HOME)/.mozilla/firefox/*.dev-edition-default

all:

install: install-firefox
	install vimrc $(HOME)/.vimrc
	install inputrc $(HOME)/.inputrc
	install xinitrc $(HOME)/.xinitrc
	install bashrc $(HOME)/.bashrc
	ln -sf .bashrc $(HOME)/.bash_profile

install-firefox:
	pkill firefox
	rm -fr $(FIREFOX)/* 
	install user.js $(FIREFOX)

uninstall:
	rm -f $(HOME)/.{bashrc,vimrc,inputrc,xinitrc}

clean:
	find . -name \*~ -delete

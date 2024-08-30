install: install-user-dirs
	for f in *rc; do install -m755 $$f ~/.$$f; done
	ln -sf .bashrc ~/.bash_profile

install-user-dirs:
	install -dm755 ~/{dox,download,music,image,video}
	install  -m644 user-dirs.dirs ~/.config
	xdg-user-dirs-update

install-firefox:
	pkill firefox
	rm -fr ~/.mozilla/firefox/*.dev-edition-default/*
	install user.js ~/.mozilla/firefox/*.dev-edition-default

uninstall:
	rm -f $(prefix)/.{bashrc,vimrc,inputrc,xinitrc}

clean:
	find . -name \*~ -delete

install: 
	find * -name \*rc -exec cp -f '{}' ~/.'{}' \;
	ln -sf .bashrc ~/.bash_profile

install-user-dirs:
	mkdir -p ~/.config ~/{dox,download,music,image,video}
	cp -f user-dirs.dirs ~/.config
	xdg-user-dirs-update

uninstall:
	find * -name \*rc -exec rm -f ~/.'{}'

clean:
	find . -name \*~ -delete

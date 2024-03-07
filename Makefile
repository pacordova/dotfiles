install:
	cp bashrc ${HOME}/.bashrc
	cp vimrc ${HOME}/.vimrc
	cp inputrc ${HOME}/.inputrc
	cp xinitrc ${HOME}/.xinitrc

uninstall:
	rm -f ${HOME}/.bashrc ${HOME}/.vimrc ${HOME}/.inputrc ${HOME}/.xinitrc

clean:
	rm -f *~ .*~

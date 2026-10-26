INSTALL= ln -f

XDG_CONFIG_HOME= ~/.config

all: install install-user-dirs

install: $(XDG_CONFIG_HOME)
	cat profile bashrc > ~/.profile
	find * -name \*rc -exec $(INSTALL) {} ~/.{} \;
	$(INSTALL) picom.conf $(XDG_CONFIG_HOME)/picom.conf
	$(INSTALL) tmux.conf ~/.tmux.conf

install-user-dirs: $(XDG_CONFIG_HOME)
	sed 's/$$HOME/~/;s/\"//g' < user-dirs.dirs \
	| awk -F= '{print "mkdir -p " $$2}' | sh
	$(INSTALL) user-dirs.dirs $(XDG_CONFIG_HOME)/user-dirs.dirs

$(XDG_CONFIG_HOME):
	mkdir -p $@

uninstall:
	find * -name \*rc -exec rm -f ~/.{}

clean:
	find . -name \*~ -delete

clean-home:
	pkill tmux || true
	rm -fr ~/.cache && mkdir ~/.cache
	rm -f .serverauth.* .*authority .*history .viminfo .lesshst

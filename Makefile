INSTALL = ln -f
XDG_CONFIG_HOME = ~/.config

XDG_OBJS != sed 's/$$HOME/~/;s/\"//g' < user-dirs.dirs | awk -F= '{print $$2}'
XDG_OBJS := $(XDG_CONFIG_HOME) $(XDG_OBJS)

all: install install-user-dirs

install: install-dirs
	cat profile bashrc > ~/.profile
	find * -name \*rc -exec $(INSTALL) {} ~/.{} \;
	$(INSTALL) picom.conf $(XDG_CONFIG_HOME)/picom.conf
	$(INSTALL) tmux.conf ~/.tmux.conf

install-user-dirs: install-dirs
	$(INSTALL) user-dirs.dirs $(XDG_CONFIG_HOME)/user-dirs.dirs

install-dirs:
	mkdir -p $(XDG_OBJS)

uninstall:
	find * -name \*rc -exec rm -f ~/.{}

clean:
	find . -name \*~ -delete

clean-home:
	pkill tmux || true
	rm -fr ~/.cache && mkdir ~/.cache
	rm -f .serverauth.* .*authority .*history .viminfo .lesshst

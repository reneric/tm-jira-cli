prefix=/usr/local

# files that need mode 755
EXEC_FILES=tm-issue

# files that need mode 644
SCRIPT_FILES =tm-issue-start
SCRIPT_FILES+=tm-issue-finish
SCRIPT_FILES+=tm-issue-version
SCRIPT_FILES+=tm-issue-common

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	grep -qF "alias tm=/usr/local/bin/tm-issue" ~/.zshrc || echo "alias tm=/usr/local/bin/tm-issue" >> ~/.zshrc
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES) && \
	cd $(HOME) && \
	rm -rf .tmissue
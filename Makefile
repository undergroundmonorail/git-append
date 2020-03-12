PREFIX ?= /usr/local
MANPREFIX ?= "$(PREFIX)/share/man/man1"
SCRIPT = "git-append"

.PHONY: install uninstall

install:
	@mkdir -p $(DESTDIR)$(MANPREFIX)
	@mkdir -p $(DESTDIR)$(PREFIX)/bin

	@echo "Installing $(SCRIPT) -> $(DESTDIR)$(PREFIX)/bin/"
	@cp -f $(SCRIPT) $(DESTDIR)$(PREFIX)/bin/
	@chmod +x $(DESTDIR)$(PREFIX)/bin/$(SCRIPT)

	@echo "Installing $(SCRIPT).1 -> $(DESTDIR)$(MANPREFIX)/"
	@cp -f $(SCRIPT).1 $(DESTDIR)$(MANPREFIX)

uninstall:
	@echo "Removing $(DESTDIR)$(PREFIX)/bin/$(SCRIPT)"
	@rm -f $(DESTDIR)$(PREFIX)/bin/$(SCRIPT)

	@echo "Removing $(DESTDIR)$(MANPREFIX)/$(SCRIPT).1"
	@rm -f $(DESTDIR)$(MANPREFIX)/$(SCRIPT).1

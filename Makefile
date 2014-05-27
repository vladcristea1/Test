install:
	install timezone_ex timezone_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat timezone_ex.services`" /etc/services || cat timezone_ex.services >> /etc/services
	install timezone_ex.xinetd /etc/xinetd.d/timezone_ex
	install timezone_ui-ro.mo /usr/share/locale/ro/LC_MESSAGES/timezone_ui.mo
	xgettext -o timezone_ui.pot -L Shell timezone_ui
	msgfmt -o timezone_ui-ro.mo lang.po

clone:
	git clone https://github.com/vladcristea1/Test.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags


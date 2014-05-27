install:
	install timezone_ex timezone_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin

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

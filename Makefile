install:
	sudo apt-get update
	sudo apt-get -y install expect
	git clone https://github.com/docopt/docopts.git
	cd docopts && ./get_docopts.sh
	sudo cp docopts/docopts /usr/local/bin
	rm -rf docopts
	export PATH=$PATH:./bin:./src/lib

test:
	ccli --help
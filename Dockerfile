from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update
run		apt-get install -y --no-install-recommends python-software-properties

run		add-apt-repository ppa:chris-lea/node.js && apt-get update

run		apt-get install -y git nodejs

run		git clone https://github.com/prawnsalad/KiwiIRC.git kiwiirc

add		config.js /kiwiirc/config.js

run		cd kiwiirc && npm install && ./kiwi build

cmd		/kiwiirc/kiwi -f

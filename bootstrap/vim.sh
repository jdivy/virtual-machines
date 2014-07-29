#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
source $DIR/os.sh

function load-rhel {
	if yum list installed "vim-enhanced" >/dev/null 2>&1; then
		echo "Vim already installed"
	else
		yum install -y vim-enhanced
	fi
}

run

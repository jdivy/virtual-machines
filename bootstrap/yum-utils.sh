#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
source $DIR/os.sh

function load-rhel {
	if yum list installed "yum-utils" >/dev/null 2>&1; then
		echo "Yum utils already installed"
	else
		yum install -y yum-utils
	fi
}

run

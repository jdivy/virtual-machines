#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
source $DIR/os.sh

function load-rhel {
	yum-config-manager --add-repo http://fishshell.com/files/linux/RedHat_RHEL-6/fish.release:2.repo > /dev/null 2>&1
	if yum list installed "fish" > /dev/null 2>&1; then
		echo "fish already installed"
	else
		yum install -y fish
	fi
}

run

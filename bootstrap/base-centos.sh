#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
source $DIR/os.sh

function load-rhel {
	$DIR/yum-utils.sh
	$DIR/vim.sh
}

run

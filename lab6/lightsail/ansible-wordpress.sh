#!/bin/bash

usage() {
	echo -e "Usage: $0 [-c]"
	echo "  -c,--check  use --check with ansible"
	echo "  -h,--help   print usage statement"
	exit 1
}

if [ $# -gt 1 ]; then
	usage
fi

for i in "$@"; do
case $i in 
	-c|--check)
	USE_CHECK=1
	shift
	;;
	-h|--help)
	usage
	shift
	;;
	*)
	usage
	;;
esac
done

if [ $USE_CHECK ]; then
	ansible-playbook -v -b -C -i /dev/null wordpress.yml
else
	ansible-playbook -v -b -i /dev/null wordpress.yml
fi

#!/bin/sh

if [[ $# == 1 ]]; then
        password=$1
else
	echo "Usage: $1 = password"
	exit 255
fi

for file in `ls -1 /unlock-pdf`
do
	qpdf --password=$password --decrypt /unlock-pdf/$file /unlock-pdf/unlock_$file
done

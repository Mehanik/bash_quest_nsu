#!/bin/bash
mkdir findtmp
for s in `find ./ -name "copy_me*"`
do
	cp $s findtmp
done
for s in `ls findtmp`
do
	tail -n1 findtmp/$s>>result.find
done
rm -rf findtmp

#!/bin/bash
mkdir unzipped
for zipped in `ls ./split/x*.zip`; do
    unzip ${zipped} -d ./unzipped
done
cat ./unzipped/x* > `basename "$PWD"`
rm -rf unzipped

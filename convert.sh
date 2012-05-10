#!/bin/bash
mkdir workdir out && cd workdir
for num in $(cat ../rfc_num)
do
cp ../rfc${num}.txt .
../rfctxt2kindlehtml.py -i rfc${num}.txt -o rfc${num}.html
../kindlegen rfc${num}.html
cp *.mobi ../out
rm -r ./*
done

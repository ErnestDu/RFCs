#!/bin/bash
for num in $(cat rfc_num)
do
wget http://www.rfc-editor.org/rfc/rfc${num}.txt
done

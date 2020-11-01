#!/bin/bash
IFS=$'\n'
if test -f out_res.txt; do
	rm out_res.txt
done
echo `./main unit1.json unit2.json` >> $2
echo `./main unit1.json unit3.json` >> $2
echo `./main unit2.json unit1.json` >> $2
echo `./main unit2.json unit3.json` >> $2
echo `./main unit3.json unit1.json` >> $2
echo `./main unit3.json unit2.json` >> $2

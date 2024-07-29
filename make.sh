#!/bin/bash

cd /home/jovyan/UnderTheCovers-IM/C/CS210-S23-PS6/ccalc/src
ls
ln -s ccalc.mk Makefile
ls
more Makefile 
make data/reference_simpleone.prebin
ls
pwd
cd ../..
ls
cd ccalc/
ls
cd src/
ls
cd data/
ls
cd ..
make data/calc_simpleone.prebin
pwd
ls
make clean
ls -l
rm Makefile 
ln -s calc.mk Makefile
make
ls
rm Makefile 
ln -s ccalc.mk Makefile
make ccalc_simpleone
ls
cd ..
ls
make
cd src
ls
./ccalc_simpleone > out
hexdump -C out
cat test.sh 
cat testcalc.sh 
./testcalc.sh ccalc_simpleone 1
rm Makefile 
ln -s ccalc.mk Makefile
./testcalc.sh ccalc_simpleone 1
gdb ccalc_simpleone
hexdump -C out2

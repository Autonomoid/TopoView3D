#!/bin/bash
gridReference=$1
square=`echo $gridReference | cut -c 1-2`
./genDat.sh $square
./TopoView3D.m $1 $2

# ./run.sh NN1060 1 = Ben Nevis
# ./run.sh NG4520 1 = Skye
# ./run.sh NY2107 1 = Scafell Pike
# ./run.sh NY3415 1 = Helvellyn
# ./run.sh SH6054 1 = Snowdon
# ./run.sh SK0867 1 = Kinder Scout

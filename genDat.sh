#!/bin/bash
square=$1
lsquare=`echo $square | tr '[:upper:]' '[:lower:]'`

inputData="terr50_gagg_gb"

cd $inputData/data/$lsquare
for z in *.zip; do dir=${z%.zip}; unzip -o -d $dir $z ; done
cd -

outputData="data/"
mkdir -p $outputData/$square

for Y in `seq 0 1 9`
do
for X in `seq 0 1 9`
do
tail -n+6 $inputData/data/$lsquare/$lsquare$Y$X*/$square$Y$X.asc > $outputData/$square/$square$Y$X.dat
done
done

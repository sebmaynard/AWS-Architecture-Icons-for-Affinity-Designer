#!/bin/bash -e

find -name "*.DS_Store" -exec rm "{}" \+
find -name "*.png" -exec rm "{}" \+
find ./ -name "*_48" -type d -exec rm -r "{}" \+
find ./ -name "*_16" -type d -exec rm -r "{}" \+
find ./ -name "*_32" -type d -exec rm -r "{}" \+

find ./ -name "48" -type d -exec rm -r "{}" \+
find ./ -name "16" -type d -exec rm -r "{}" \+
find ./ -name "32" -type d -exec rm -r "{}" \+

cd Architecture*
for i in * ; do 
    cd $i
    mv *64/* .
    rm -r *64
    cd ../
done
cd ../

cd  Category*
mv Arch-Cat*_64/* .
rm -r Arch-Cat*_64
cd ../

pwd

cd Resource-Icons*
for i in * ; do 
    cd $i
    mv Res_*/* .
    find ./ -name "Res_*" -type d -exec rmdir "{}" \+
    cd ../
done
cd ../

mv Resource-Icons* Resource-light
cp -r Resource-light Resource-dark

cd Resource-light
find ./ -name "*_Dark.svg" -exec rm "{}" \+
cd ../

cd Resource-dark
find ./ -name "*_Light.svg" -exec rm "{}" \+
cd ../

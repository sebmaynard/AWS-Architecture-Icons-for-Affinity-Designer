#!/bin/bash -e

cd Resource-light
find ./ -name "*_Dark.svg" -exec rm "{}" \+
cd ../

cd Resource-dark
find ./ -name "*_Light.svg" -exec rm "{}" \+
cd ../

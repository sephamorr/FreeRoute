#!/bin/bash
echo -n "packaging jar..."
cd `dirname $0`
mkdir package_temp
cd package_temp
unzip ../freeroute/lib/jh.jar
cp ../dist/FreeRoute.jar ../dist/FreeRoute_pack.jar
jar uf ../dist/FreeRoute_pack.jar com javax
cd ..
rm -rf package_temp
echo done
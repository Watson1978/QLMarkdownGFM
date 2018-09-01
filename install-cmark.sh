#!/bin/bash

PROJECT_DIR=`pwd`
cd /tmp

git clone git@github.com:Watson1978/cmark.git
cd cmark
git checkout -b tasklist origin/tasklist

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE="Release" -DCMAKE_INSTALL_PREFIX="$PROJECT_DIR/cmark" -DCMAKE_OSX_ARCHITECTURES="x86_64" -DCMAKE_OSX_DEPLOYMENT_TARGET="10.11" ..
make -j
make install

rm -rf $PROJECT_DIR/cmark/bin
rm -rf $PROJECT_DIR/cmark/share
rm -rf $PROJECT_DIR/cmark/lib/*.dylib

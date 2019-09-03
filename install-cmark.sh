#!/bin/bash

PROJECT_DIR=`pwd`
rm -rf $PROJECT_DIR/cmark

cd /tmp

git clone https://github.com/github/cmark-gfm.git
cd cmark-gfm

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE="Release" -DCMAKE_INSTALL_PREFIX="$PROJECT_DIR/cmark" -DCMAKE_OSX_ARCHITECTURES="x86_64" -DCMAKE_OSX_DEPLOYMENT_TARGET="10.11" ..
make -j
make install
cp ./src/config.h $PROJECT_DIR/cmark/include

rm -rf $PROJECT_DIR/cmark/bin
rm -rf $PROJECT_DIR/cmark/share
rm -rf $PROJECT_DIR/cmark/lib/*.dylib

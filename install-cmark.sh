#!/bin/bash

PROJECT_DIR=`pwd`
cd /tmp

git clone git@github.com:Watson1978/cmark.git
cd cmark
git checkout -b tasklist origin/tasklist

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PROJECT_DIR/cmark ..
make -j
make install
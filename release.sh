#!/bin/bash

rm -rf build
xcodebuild -arch x86_64 -arch i386 -configuration Release

cd build/Release
zip -r QLMarkdownGFM.qlgenerator.zip QLMarkdownGFM.qlgenerator

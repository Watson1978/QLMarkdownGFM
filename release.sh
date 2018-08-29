#!/bin/bash

rm -rf build
xcodebuild -workspace QLMarkdownGFM.xcworkspace -scheme QLMarkdownGFM -arch x86_64 -arch i386 -configuration Release

cd build/Release
zip -r QLMarkdownGFM.qlgenerator.zip QLMarkdownGFM.qlgenerator

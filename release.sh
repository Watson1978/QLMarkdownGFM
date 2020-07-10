#!/bin/bash

rm -rf build
xcodebuild clean
xcodebuild -workspace QLMarkdownGFM.xcworkspace -scheme QLMarkdownGFM -arch x86_64 -arch arm64 -configuration Release -derivedDataPath build

cd build/Build/Products/Release
zip -r QLMarkdownGFM.qlgenerator.zip QLMarkdownGFM.qlgenerator
cp QLMarkdownGFM.qlgenerator.zip ../../..

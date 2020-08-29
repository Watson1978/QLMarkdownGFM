#!/bin/bash

rm -rf build
xcodebuild clean
xcodebuild -workspace QLMarkdownGFM.xcworkspace -scheme QLMarkdownGFM -arch x86_64 -arch arm64 -configuration Release -derivedDataPath build

codesign --force --verify --verbose --sign "Developer ID Application: Shizuo Fujita (3E97Y6CS78)" \
    build/Build/Products/Release/QLMarkdownGFM.qlgenerator \
    --deep \
    --options runtime \
    --entitlements entitlements.plist \
    --timestamp

ditto -V -c -k --keepParent build/Build/Products/Release/QLMarkdownGFM.qlgenerator build/QLMarkdownGFM.qlgenerator.zip

PASSWORD=$(security find-generic-password -a watson -s Notarization -w)

xcrun altool --notarize-app -t osx -f build/QLMarkdownGFM.qlgenerator.zip \
    --primary-bundle-id jp.cat-soft.QLMarkdownGFM \
    -u "watson1978@gmail.com" \
    -p $PASSWORD

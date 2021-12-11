#!/bin/bash

xcodebuild archive\
    -workspace Example/CenteredScrollView.xcworkspace\
    -scheme CenteredScrollView\
    -destination "generic/platform=iOS"\
    -archivePath "archives/CenteredScrollView"\
    SKIP_INSTALL=NO\
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive\
    -workspace Example/CenteredScrollView.xcworkspace\
    -scheme CenteredScrollView\
    -destination "generic/platform=iOS Simulator"\
    -archivePath "archives/CenteredScrollView-Sim"\
    SKIP_INSTALL=NO\
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES\

xcodebuild -create-xcframework\
        -framework "archives/CenteredScrollView-Sim.xcarchive/Products/Library/Frameworks/CenteredScrollView.framework"\
        -framework "archives/CenteredScrollView.xcarchive/Products/Library/Frameworks/CenteredScrollView.framework"\
        -output "xcframeworks/CenteredScrollView.xcframework"

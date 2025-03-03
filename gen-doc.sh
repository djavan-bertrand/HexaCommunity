DOCC_JSON_PRETTYPRINT="YES"
REPO_NAME=HexaCommunity

xcodebuild docbuild \
    -scheme 'HexaCommunity-Package' \
    -destination 'generic/platform=iOS' \
    -derivedDataPath ./docs_build_files

$(xcrun --find docc) process-archive transform-for-static-hosting "docs_build_files/Build/Products/Debug-iphoneos/Hexa.doccarchive" \
    --hosting-base-path $REPO_NAME \
    --output-path ./docs
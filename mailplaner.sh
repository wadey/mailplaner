#!/bin/sh -x

SUFFIX=SimpleGeo

trash /Applications/Mailplane${SUFFIX}.app
cp -a /Applications/Mailplane.app /Applications/Mailplane${SUFFIX}.app
if [ -e Mailplane.icns ]; then
    cp Mailplane.icns /Applications/Mailplane${SUFFIX}.app/Contents/Resources
fi
sed "s/SUFFIX/${SUFFIX}/" Info.plist.patch | patch /Applications/Mailplane${SUFFIX}.app/Contents/Info.plist

#!/bin/sh -x

SUFFIX=SimpleGeo

if which trash >/dev/null 2>&1; then
    trash /Applications/Mailplane${SUFFIX}.app
else
    rm -rf /Applications/Mailplane${SUFFIX}.app
fi
cp -a /Applications/Mailplane.app /Applications/Mailplane${SUFFIX}.app
if [ -e Mailplane.icns ]; then
    cp Mailplane.icns /Applications/Mailplane${SUFFIX}.app/Contents/Resources
fi
sed "s/SUFFIX/${SUFFIX}/" Info.plist.patch | patch /Applications/Mailplane${SUFFIX}.app/Contents/Info.plist

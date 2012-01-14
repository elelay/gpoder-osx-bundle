#!/bin/sh

rm -Rf ~/Desktop/gPodder.app/Contents/Resources/lib/python2.7/test
rm -Rf ~/Desktop/gPodder.app/Contents/Resources/lib/python2.7/unittest
rm -Rvf ~/Desktop/gPodder.app/Contents/Resources/lib/python2.7/*/test
rm -f ~/Desktop/gPodder.app/Contents/Resources/lib/python2.7/config/libpython2.7.a
find ~/Desktop/gPodder.app/Contents/Resources/lib/python2.7 -name '*.pyc' -delete
find ~/Desktop/gPodder.app/Contents/Resources/lib/python2.7 -name '*.pyo' -delete
rm ~/Desktop/gPodder.app/Contents/MacOS/gPodder-bin
rm -Rf ~/Desktop/gPodder.app/Contents/Resources/share/gpodder/ui/qml

# Command-XX shortcuts in gPodder menus 
/usr/bin/xsltproc -o gpodder.ui.tmp adjust-modifiers.xsl ~/Desktop/gPodder.app/Contents/Resources/share/gpodder/ui/desktop/gpodder.ui
mv gpodder.ui.tmp ~/Desktop/gPodder.app/Contents/Resources/share/gpodder/ui/desktop/gpodder.ui


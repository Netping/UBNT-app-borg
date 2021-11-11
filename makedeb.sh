#!/bin/bash
#need set version in next 3-th line
major=0
minor=0
path=1
apt-get install dpkg debconf debhelper lintian
cat <<EOF > ./UBNT-APP-BORG/DEBIAN/control
Package: ubnt-app-borg
Version: $major.$minor-$path
Maintainer: vv.lisyak@gmail.com
Architecture: all
Section: misc
Description: NetPing
 First deb build.
 Try nomber one.
EOF
fakeroot dpkg-deb --build UBNT*
mv ./UBNT-APP-BORG.deb UBNT-APP-BORG_$major.$minor-$path.deb
exit 0

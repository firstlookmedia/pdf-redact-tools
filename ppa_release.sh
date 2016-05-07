#!/bin/sh

# This script pushes updates to my Ubuntu PPA: https://launchpad.net/~micahflee/+archive/ppa
# If you want to use it, you'll need your own ~/.dput.cf and ssh key.
# More info: https://help.launchpad.net/Packaging/PPA/Uploading

VERSION=`cat version`

rm -rf deb_dist
python setup.py --command-packages=stdeb.command sdist_dsc
cd deb_dist/pdf-redact-tools-$VERSION
dpkg-buildpackage -S -pqubes-gpg-client-wrapper-wrapper -k927F419D7EC82C2F149C1BD1403C2657CD994F73
cd ..
dput ppa:micahflee/ppa pdf-redact-tools_$VERSION-1_source.changes
cd ..

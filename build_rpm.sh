#!/bin/sh

VERSION=`cat version`

# clean up from last build
rm -r build

# build binary package
python setup.py bdist_rpm --requires="ImageMagick, perl-Image-ExifTool"

# install it
echo ""
echo "To install, run:"
echo "sudo yum install dist/pdf-redact-tools-$VERSION-1.noarch.rpm"

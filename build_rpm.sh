#!/bin/sh

# clean up from last build
rm -r deb_dist

# build binary package
python setup.py bdist_rpm --requires="ImageMagick perl-Image-ExifTool"

# install it
echo ""
echo "To install, run:"
echo "sudo yum install dist/pdf-redact-tools-0.1-1.noarch.rpm"

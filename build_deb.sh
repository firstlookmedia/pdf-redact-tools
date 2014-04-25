#!/bin/sh

# clean up from last build
rm -r deb_dist

# build binary package
python setup.py --command-packages=stdeb.command bdist_deb

# install it
echo ""
echo "To install, run:"
echo "sudo dpkg -i deb_dist/pdf-redact-tools_0.1-1_all.deb"

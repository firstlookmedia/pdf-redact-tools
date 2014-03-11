#!/bin/sh

# clean up from last build
rm -r deb_dist

# build binary package
python setup.py --command-packages=stdeb.command bdist_deb

# install it
sudo dpkg -i deb_dist/pdf-redact-tools_0.1-1_all.deb


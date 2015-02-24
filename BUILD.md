# Building PDF Redact Tools

First, get a copy of the source code.

```sh
git clone https://github.com/micahflee/pdf-redact-tools.git
cd pdf-redact-tools
```

### Debian-based Linux (Debian, Ubuntu, Mint, etc.)

Install dependencies:

```sh
sudo apt-get install imagemagick libimage-exiftool-perl python-stdeb python-all
```

Create a .deb and install it:

```sh
./build_deb.sh
sudo dpkg -i deb_dist/pdf-redact-tools_*-1_all.deb
```

### Red Hat-based Linux (Red Hat, Fedora, CentOS, etc.)

Install dependencies:

```sh
sudo yum install ImageMagick perl-Image-ExifTool
```

Create a .rpm and install it:

```sh
./build_rpm.sh
sudo yum install dist/pdf-redact-tools-*-1.noarch.rpm
```

### Mac OS X

The easiest way to get this working on OS X is by installing dependencies with [Homebrew](http://brew.sh/).

Install dependencies:

```sh
brew install imagemagick exiftool gs
```

Install pdf-redact-tools systemwide:

```sh
sudo cp pdf-redact-tools /usr/local/bin
```

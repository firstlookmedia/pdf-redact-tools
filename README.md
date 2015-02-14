# PDF Redact Tools

PDF Redact Tools helps with securely redacting and stripping metadata from documents before publishing.

## Quick Start

### Debian-based Linux

Here's how to package and install pdf-redact tools in Debian, Ubuntu, Mint, etc.:

```sh
sudo apt-get install imagemagick libimage-exiftool-perl python-stdeb python-all
./build_deb.sh
sudo dpkg -i deb_dist/pdf-redact-tools_0.1-1_all.deb
```

For doing redacting, you'll probably also want GIMP.

```sh
sudo apt-get install gimp
```

### Red Hat-based Linux

Here's how to package and install pdf-redact tools in Red Hat, Fedora, CentOS, etc.:

```sh
sudo yum install ImageMagick perl-Image-ExifTool
./build_rpm.sh
sudo yum install dist/pdf-redact-tools-0.1-1.noarch.rpm
```

For doing redacting, you'll probably also want GIMP.

```sh
sudo yum install gimp
```

### Mac OS X

The easiest way to get this working on OS X is by installing dependencies with [Homebrew](http://brew.sh/). Once you've installed Homebrew, open a terminal and run:

```sh
brew install imagemagick exiftool gs
./install_osx.sh
```

## How to Use

To use it, convert your original document to a PDF.

Then start by exploding the PDF into PNG files:

```sh
pdf-redact-tools --explode original_document.pdf
```

This will create a new folder in the same directory as the PDF called (in this case) `original_document_pages`, with a PNG for each page.

Edit each page that needs redacting in graphics editing software like GIMP. Note that opening, editing, and saving a PNG in GIMP will likely make it look slightly different than the other PNGs. For best results, open all PNGs and simply save and close the pages you don't need to edit.

When you're done, combine the PNGs back into a flattened, informationless PDF:

```sh
pdf-redact-tools --merge original_document.pdf
```

In this case, the final redacted PDF is called `orginal_document-final.pdf`.

If you don't need to redact anything, but you just want a new PDF that definitely doesn't contain malware or metadata, you can simply sanitize it.

```sh
pdf-redact-tools --sanitize untrusted.pdf
```

The final document that you can trust is called `untrusted-final.pdf`.

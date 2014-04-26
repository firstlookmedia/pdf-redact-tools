# PDF Redact Tools

PDF Redact Tools is a set of tools to help with securely redacting and stripping metadata from documents before publishing.

## Quick Start

### Debian-based Linux

Here's how to package and install pdf-redact tools in Debian, Ubuntu, Mint, etc.:

    sudo apt-get install imagemagick libimage-exiftool-perl
    ./build_deb.sh
    sudo dpkg -i deb_dist/pdf-redact-tools_0.1-1_all.deb

For doing redacting, you'll probably also want GIMP.

    sudo apt-get install gimp

### Red Hat-based Linux

Here's how to package and install pdf-redact tools in Red Hat, Fedora, CentOS, etc.:

    sudo yum install ImageMagick perl-Image-ExifTool
    ./build_rpm.sh
    sudo yum install dist/pdf-redact-tools-0.1-1.noarch.rpm

For doing redacting, you'll probably also want GIMP.

    sudo yum install gimp

### Mac OS X

The easiest way to get this working on OS X is by installing dependencies with [Homebrew](http://brew.sh/). Once you've installed Homebrew, open a terminal and run:

    brew install imagemagick exiftool gs
    ./install_osx.sh

## How to Use

To use it, convert your original document to a PDF.

Then start by exploding the PDF into PNG files:

    pdf-explode original_document.pdf

This will create a new folder in the same directory as the PDF called (in this case) `original_document_pages`, with a PNG for each page.

Edit each page that needs redacting in graphics editing software like GIMP.

When you're done, combine the PNGs back into a flattened, informationless PDF:

    pdf-merge original_document.pdf

In this case, the final redacted PDF is called `orginal_document-final.pdf`.

If you don't need to redact anything, but you just want a new PDF that definitely doesn't contain malware or metadata, you can simply sanitize it.

    pdf-sanitize untrusted.pdf

The final document that you can trust is called `untrusted-final.pdf`.

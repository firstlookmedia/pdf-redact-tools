# PDF Redact Tools

_Warning: This project is no longer maintained. A much better tool is [dangerzone](https://dangerzone.rocks)._

![PDF Redact Tools](/logo.png)

PDF Redact Tools helps with securely redacting and stripping metadata from documents before publishing.

*Warning:* PDF Redact Tools uses ImageMagick to parse PDFs. While ImageMagick is a versatile tool, it has a history of some [terrible](https://imagetragick.com/) security bugs. A malicious PDF could exploit a bug in ImageMagick to take over your computer. If you're working with potentially malicious PDFs, it's safest to run them through PDF Redact Tools in an isolated environment, such as a virtual machine, or by using a tool such as the [Qubes PDF Converter](https://github.com/QubesOS/qubes-app-linux-pdf-converter) instead.

## Quick Start

### Mac OS X

* Install [Homebrew](http://brew.sh/)
* Open a terminal and type `$ brew install pdf-redact-tools`

### Ubuntu

You can install PDF Redact Tools from this Ubuntu PPA:

```sh
$ sudo add-apt-repository ppa:micahflee/ppa
$ sudo apt-get update
$ sudo apt-get install pdf-redact-tools
```

### Other

PDF Redact Tools isn't yet packaged in any GNU/Linux distributions yet, however it's easy to install by following the [build instructions](/BUILD.md). I haven't attempted to make this work in Windows.

## How to Use

To use it, convert your original document to a PDF.

Then start by exploding the PDF into PNG files:

```sh
$ pdf-redact-tools --explode example_document.pdf
```

This will create a new folder in the same directory as the PDF called (in this case) `example_document_pages`, with a PNG for each page.

Edit each page that needs redacting in graphics editing software like GIMP or Photoshop. Note that opening, editing, and saving a PNG will likely make it look slightly different than the other PNGs. For best results, open all PNGs and simply save and close the pages you don't need to edit.

When you're done, combine the PNGs back into a flattened, informationless PDF:

```sh
$ pdf-redact-tools --merge example_document.pdf
```

In this case, the final redacted PDF is called `example_document-final.pdf`.

If you don't need to redact anything, but you just want a new PDF that definitely doesn't contain malware or metadata, you can simply sanitize it.

```sh
$ pdf-redact-tools --sanitize untrusted.pdf
```

The final document that you can trust is called `untrusted-final.pdf`.

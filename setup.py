from distutils.core import setup
import os

with open('version') as buf:
    version = buf.read().strip()

setup(
    name='pdf-redact-tools',
    version=version,
    author='Micah Lee',
    author_email='micah.lee@firstlook.org',
    platforms=['GNU/Linux'],
    license='GPLv3',
    url='https://github.com/micahflee/pdf-redact-tools',
    description='PDF Redact Tools helps with securely redacting and stripping metadata from documents before publishing',
    long_description="PDF Redact Tools helps with securely redacting and stripping metadata from documents before publishing.",
    scripts=['pdf-redact-tools']
)

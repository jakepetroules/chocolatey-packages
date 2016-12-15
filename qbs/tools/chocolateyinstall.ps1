$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'qbs' `
    -Url 'https://download.qt.io/official_releases/qbs/1.7.0/qbs-windows-x86-1.7.0.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Url64bit 'https://download.qt.io/official_releases/qbs/1.7.0/qbs-windows-x86_64-1.7.0.zip' `
    -Checksum '896b2c3934b0bfd5f3b4efb2da81cacaf9078295e25940d018a44beca779449ffcf9ef9389b6d3eeb7f8b1eea6b06ae5563e7ff13e7652b8051d366d43f23f0a' `
    -ChecksumType 'sha512' `
    -Checksum64 '01baad3fa033e8d6ba4526424046290c583a540ff985a4c82a4dfe66b5466482342fafdcb185f7b961bc4fd3fc3810c52244ff7597b7094863abdb1c6058b10c' `
    -ChecksumType64 'sha512'

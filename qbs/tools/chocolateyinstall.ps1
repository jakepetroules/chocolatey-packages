$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'qbs' `
    -Url 'https://download.qt.io/official_releases/qbs/1.7.0/qbs-windows-x86-1.7.0.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Url64bit 'https://download.qt.io/official_releases/qbs/1.7.0/qbs-windows-x86_64-1.7.0.zip' `
    -Checksum '7756ac0a6dbaf67f9d21bb440dfc0b63e53cf8372387dd81d93c1db6ee2f1dfc46d7f4d54da8cda398d7e5951f9d31759dd4491fee9d04a1003e4084dace3ac8' `
    -ChecksumType 'sha512' `
    -Checksum64 '1081c35c9a73c980d11f9535363b1b375e3db1c596cf998dde036741e32946a8c9eaed29bb0ae97864bc87e334461551297779cc29d3ddf2fe19d83a94036a47' `
    -ChecksumType64 'sha512'

$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'qbs' `
    -Url 'https://download.qt.io/official_releases/qbs/1.7.1/qbs-windows-x86-1.7.1.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Url64bit 'https://download.qt.io/official_releases/qbs/1.7.1/qbs-windows-x86_64-1.7.1.zip' `
    -Checksum 'e55c7fa50e24fe34d63183d688134b782baa610eb0a2eb7347c54cd016168cf4357b6c19ee223b36b3f32cef30de0ce1f6ce11f9319ad8bce563879b5d197325' `
    -ChecksumType 'sha512' `
    -Checksum64 'e7e37ae9e726249743f693e97faa3557144e583f5bfd87c030d212dfd24f6639b72d1600846617be3300fea60b8f95e4150c885bbcc6f8155c79ac8013d7232c' `
    -ChecksumType64 'sha512'

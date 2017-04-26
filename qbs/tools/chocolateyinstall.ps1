$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'qbs' `
    -Url 'https://download.qt.io/official_releases/qbs/1.7.2/qbs-windows-x86-1.7.2.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Url64bit 'https://download.qt.io/official_releases/qbs/1.7.2/qbs-windows-x86_64-1.7.2.zip' `
    -Checksum 'fa7482f20c48bff02695ae9d8d4e208326c2e29e0e17ab7b3036e6c9820cb204958f90e9addc02fc9db966644fa84791372665f43e2c05e4434b5a62daf63108' `
    -ChecksumType 'sha512' `
    -Checksum64 '692cc330279552be90874aa7764b62941536de1c172e26d82a6f20b204385fa1377f738478ff54f6b414d41c88f3017567a74025b8b34c248d252e5e85b06e32' `
    -ChecksumType64 'sha512'

$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'libxslt' `
    -Url 'http://xmlsoft.org/sources/win32/libxslt-1.1.26.win32.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Checksum 'AE09C820D592DE1504829ED63627F46A4759CD799E625B6332209BC5FF72542312CABE2B6B4F0A68D24C47939584DC63DF32DA021ADC73967AB6E747EBFF99D4' `
    -ChecksumType 'sha512'

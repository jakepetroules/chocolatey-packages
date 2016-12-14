$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'zlib' `
    -Url 'http://zlib.net/zlib128-dll.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '8fd8dbfb5b01386209872b62e401e639' `
    -ChecksumType 'md5'

Install-ChocolateyPath `
    -PathToInstall "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

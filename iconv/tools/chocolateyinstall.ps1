$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'iconv' `
    -Url 'http://xmlsoft.org/sources/win32/iconv-1.9.2.win32.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Checksum 'D676335369E32BFAA1244C01C5B31B0CEFF845873B4976D32D353E04B9333927F7741B6B017E17DF3CE2A3AD338E66191CE8B35DB9E6045AF844C3EF9F092D4C' `
    -ChecksumType 'sha512'

Install-ChocolateyPath `
    -PathToInstall "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\iconv-1.9.2.win32\bin"

$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'jom' `
    -Url 'https://download.qt.io/official_releases/jom/jom_1_1_2.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '830CD94ED6518FBE4604A0F5A3322671B4674B87D25A71349C745500D38E85C0FAC4F6995242FC5521EB048E3966BB5EC2A96A06B041343ED8DA9BBA78124F34' `
    -ChecksumType 'sha512'

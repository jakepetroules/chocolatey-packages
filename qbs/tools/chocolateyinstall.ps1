$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'qbs' `
    -Url 'https://download.qt.io/official_releases/qbs/1.6.1/qbs-windows-x86-1.6.1.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '51FA473BFFDEBFFB68F2A97DCE1FA124A807DB46DA7969675D403E5E0906C9D2D6563EF50309FBE259EC37141B01ADBCEA65EA886D8CDF82615D79306384AD70' `
    -ChecksumType 'sha512'

$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName = 'qbs'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.qt.io/official_releases/qbs/1.4.5/qbs-windows-x86-1.4.5.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName = 'jom'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.qt.io/official_releases/jom/jom_1_1_1.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
}

Install-ChocolateyZipPackage @packageArgs

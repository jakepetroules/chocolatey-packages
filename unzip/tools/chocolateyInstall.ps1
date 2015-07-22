$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName = 'unzip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url = 'ftp://ftp.info-zip.org/pub/infozip/win32/unz600xn.exe'
$url = 'http://fossies.org/windows/misc/unz600xn.exe'

$packageArgs = @{
  packageName   = $packageName
  installerType = 'exe'
  silentArgs    = '-d', $toolsDir
  url           = $url
}

Install-ChocolateyPackage @packageArgs

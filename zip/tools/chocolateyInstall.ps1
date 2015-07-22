$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName = 'zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url = 'ftp://ftp.info-zip.org/pub/infozip/win32/zip300xn.zip'
#$url64 = 'ftp://ftp.info-zip.org/pub/infozip/win32/zip300xn-x64.zip'
$url = 'http://fossies.org/windows/misc/zip300xn.zip'
$url64 = 'http://fossies.org/windows/misc/zip300xn-x64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
}

Install-ChocolateyZipPackage @packageArgs

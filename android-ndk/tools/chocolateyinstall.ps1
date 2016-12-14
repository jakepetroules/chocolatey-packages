$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'android-ndk' `
    -Url 'https://dl.google.com/android/repository/android-ndk-r13b-windows-x86.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Url64bit 'https://dl.google.com/android/repository/android-ndk-r13b-windows-x86_64.zip' `
    -Checksum '4eb1288b1d4134a9d6474eb247f0448808d52408' `
    -ChecksumType 'sha1' `
    -Checksum64 '649d306559435c244cec5881b880318bb3dee53a' `
    -ChecksumType64 'sha1'

Install-ChocolateyEnvironmentVariable `
    -VariableName 'ANDROID_NDK_ROOT' `
    -VariableValue "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\android-ndk-r13b"

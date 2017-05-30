$ErrorActionPreference = 'Stop'

Install-ChocolateyZipPackage `
    -PackageName 'qbs' `
    -Url 'https://download.qt.io/official_releases/qbs/1.8.0/qbs-windows-x86-1.8.0.zip' `
    -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
    -Url64bit 'https://download.qt.io/official_releases/qbs/1.8.0/qbs-windows-x86_64-1.8.0.zip' `
    -Checksum 'a968f3128fe25cb38859b7cee7023102554ce2745b9626b563d30a9fc97abfe412fb4e38ae0eefcee3a19a9a11afe990ce6e8a4bec06a988353d29477d740bb9' `
    -ChecksumType 'sha512' `
    -Checksum64 'a35168ea5264c332044b5e8ee59090a3bb4c45247b17254d07b18de5ae51ef4984cf574ec1d0833669f2e6a3fbfe2ca0facb8c20e9d3da780aeb7330974c4633' `
    -ChecksumType64 'sha512'

# Workaround until the next release which includes https://codereview.qt-project.org/#/c/195815/
If (Test-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qbs-windows-x86_64-1.8.0") {
    Copy-Item "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qbs-windows-x86_64-1.8.0\bin\*.dll" `
        "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qbs-windows-x86_64-1.8.0\libexec\qbs"
} Else {
    Copy-Item "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qbs-windows-x86-1.8.0\bin\*.dll" `
        "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qbs-windows-x86-1.8.0\libexec\qbs"
}

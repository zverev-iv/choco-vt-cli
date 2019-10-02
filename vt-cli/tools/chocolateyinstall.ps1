$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/VirusTotal/vt-cli/releases/download/0.7.0/Windows32.zip' # download url, HTTPS preferred
$url64      = 'https://github.com/VirusTotal/vt-cli/releases/download/0.7.0/Windows64.zip' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'vt-cli*'
  checksum      = 'C453A6AF6C86301FACF7FEECCC469DBC91901C17911F75E95197CE526650CE7B'
  checksumType  = 'sha256'
  checksum64    = '2468803342F0E12853D2761D14AAFE2E9EBC086CBF1C7F9CC334F430BB1C4167'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

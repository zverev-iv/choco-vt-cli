$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/VirusTotal/vt-cli/releases/download/0.6.1/Windows32.zip' # download url, HTTPS preferred
$url64      = 'https://github.com/VirusTotal/vt-cli/releases/download/0.6.1/Windows64.zip' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'vt-cli*'
  checksum      = '8AD7A5828EE7047C2941F610268A82ADC6082D01A0B2FEA894B24BF902A65B77'
  checksumType  = 'sha256'
  checksum64    = 'C2072C65A2487CA26BE10609378EB36658B3215F80D46C82E652CF596065A7FD'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
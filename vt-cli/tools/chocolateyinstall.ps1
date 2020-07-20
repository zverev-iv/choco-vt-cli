$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/VirusTotal/vt-cli/releases/download/0.8.0/Windows32.zip' # download url, HTTPS preferred
$url64      = 'https://github.com/VirusTotal/vt-cli/releases/download/0.8.0/Windows64.zip' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'vt-cli*'
  checksum      = 'dd87d500d563e50b2f113da3161ade07d72f5107ef317ca9ff52eb8141c8c0f5'
  checksumType  = 'sha256'
  checksum64    = '1f364e50494b230caba8e95eedd8f5a05242e2a14812fa7a2078bdf0ddea2cc1'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

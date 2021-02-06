$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/VirusTotal/vt-cli/releases/download/0.9.0/Windows32.zip'
$url64      = 'https://github.com/VirusTotal/vt-cli/releases/download/0.9.0/Windows64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'vt-cli*'
  checksum      = '6C68DC29C9691243558DCF2644EE728827412D7C3058CEAD1C74BE3AF6C7DC7B'
  checksumType  = 'sha256'
  checksum64    = '8339B1DC9992B68D729705B8C1B098EA3FDF54E4A3DA70D5069D143A53DB68EF'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

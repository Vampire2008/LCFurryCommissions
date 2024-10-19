if (!(Test-Path "$PSScriptRoot/dist")) {
    New-Item -Path "$PSScriptRoot/dist" -ItemType Directory
}

$outputFile = "$PSScriptRoot/dist/LCFurryCommissions.zip"

if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

Compress-Archive -Path ("$PSScriptRoot/package/*") -DestinationPath $outputFile

param(
[string]$apiKey,
[string]$source,
[string]$tag
)

if ("" -eq "")
{
    Write-Output "Key: $apiKey | Source: $source"
    dotnet nuget push ./nupkgs/Georg.TestPackage.$tag.nupkg -k $apiKey -s $source
    Resolve-Path ./TestPackage/nupkgs/Georg.*.nupkg
    Resolve-Path ./nupkgs/Georg.*.nupkg
}
else
{
    dotnet nuget push ./ArchUnitNET/nupkgs/TngTech.ArchUnitNET.*.nupkg -k $apiKey -s $source
    dotnet nuget push ./ArchUnitNET.xUnit/nupkgs/TngTech.ArchUnitNET.xUnit.*.nupkg -k $apiKey -s $source
    dotnet nuget push ./ArchUnitNET.NUnit/nupkgs/TngTech.ArchUnitNET.NUnit.*.nupkg -k $apiKey -s $source
}

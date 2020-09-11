param(
[string]$apiKey,
[string]$source
)

if ("" -eq "")
{
    Write-Output "Key: $apiKey | Source: $source"
    dotnet nuget push ./TestPackage/nupkgs/Georg.TestPackage.*.nupkg -k $apiKey -s $source
}
else
{
    dotnet nuget push ./ArchUnitNET/nupkgs/TngTech.ArchUnitNET.*.nupkg -k $apiKey -s $source
    dotnet nuget push ./ArchUnitNET.xUnit/nupkgs/TngTech.ArchUnitNET.xUnit.*.nupkg -k $apiKey -s $source
    dotnet nuget push ./ArchUnitNET.NUnit/nupkgs/TngTech.ArchUnitNET.NUnit.*.nupkg -k $apiKey -s $source
}

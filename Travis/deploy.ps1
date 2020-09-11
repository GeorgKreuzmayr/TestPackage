param(
[string]$tag = ""
)
New-Variable -Name "VERSION_PATTERN" -Value "^[0-9]+\.[0-9]+\.[0-9]"

if ("$tag" -match $VERSION_PATTERN)
{
    Write-Output "Deploying with Travis Tag: $tag"
    exit 0
    dotnet restore
    dotnet build -c Release
    dotnet pack -c Release --output nupkgs -p:PackageVersion="$tag" -p:AssemblyVersion="$tag.0"
    dotnet test -c Release
}
else
{
    Write-Output "$tag is an illegal tag"
    Write-Output "Git Tag has to resemble a package version (e.g. 1.0.0)."
    exit 1
}
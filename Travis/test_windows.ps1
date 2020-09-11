dotnet restore
dotnet build -c Release
dotnet pack -c Release --output nupkgs -p:PackageVersion="0.0.0" -p:AssemblyVersion="0.0.0.0"
dotnet test -c Release
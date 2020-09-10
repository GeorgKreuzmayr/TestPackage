New-Variable -Name "VERSION_PATTERN" -Value "^[0-9]+\.[0-9]+\.[0-9]"
param(
[string]$v_t = ""
)
echo "THIS IS THE VAR TEST VALUE LOOOOOKKKK::: $v_t"

if("$TRAVIS_TAG" -eq "")
{
    echo "no travis tag"
}
elseif ("$TRAVIS_TAG" -match $VERSION_PATTERN)
{
    echo "found travis tag: $TRAVIS_TAG"
}
else
{
    echo "Git Tag has to resemble a package version (e.g. 1.0.0)."
    exit 1
}
param(
[string]$tag = ""
)

if($tag -eq $null)
{
    echo "no travis tag on deploy"
}
else
{
    echo "found travis tag on deploy: $tag"
}
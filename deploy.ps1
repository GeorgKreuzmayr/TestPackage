echo "THIS IS THE TRAVIS TAG ATTTENNTTTIOOONNNNK $TAVIS_TAG"

if($TRAVIS_TAG -eq $null)
{
    echo "no travis tag on deploy"
}
else
{
    echo "found travis tag on deploy: $TRAVIS_TAG"
}
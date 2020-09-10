if("$TRAVIS_TAG" -eq "")
{
    echo "no travis tag on deploy"
}
else
{
    echo "found travis tag on deploy: $TRAVIS_TAG"
}
echo "********************"
echo "* dotnet : restore *"
echo "********************"

dotnet restore ./src/project.csproj


echo "********************"
echo "* dotnet : build   *"
echo "********************"
dotnet build ./src/project.csproj

echo "********************"
echo "* dotnet : pack    *"
echo "********************"
dotnet pack ./src/project.csproj -o /build/artifacts


echo "********************"
echo "Artifacts:"
ls /build/artifacts
echo "********************"
write-host "********************"
write-host "* dotnet : restore *"
write-host "********************"
dotnet restore ./src/project.csproj


write-host "********************"
write-host "* dotnet : build   *"
write-host "********************"
dotnet build ./src/project.csproj

write-host "********************"
write-host "* dotnet : pack    *"
write-host "********************"
dotnet pack ./src/project.csproj -o ./artifacts

write-host "********************"
write-host "Artifacts:"
ls ./artifacts
write-host "********************"
write-host "dotnet restore" -f cyan
dotnet restore ./src/project.csproj
write-host "dotnet build" -f cyan
dotnet build ./src/project.csproj
write-host "dotnet run" -f cyan
if(-not (test-path artifacts)) {
    md artifacts | out-null
}
dotnet run -p ./src/project.csproj | out-file artifacts/out.txt
$str = gc artifacts/out.txt 
write-host "$str" -f yellow
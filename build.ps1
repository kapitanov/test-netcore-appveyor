write-host "dotnet --info" -f cyan
write-host "$(dotnet --info | out-string)" -f yellow

write-host "dotnet --version" -f cyan
write-host "$(dotnet --version | out-string)" -f yellow

write-host "dotnet restore" -f cyan
dotnet restore ./src/project.csproj
if($LASTEXITCODE) {
    exit 1
}

write-host "dotnet build" -f cyan
dotnet build ./src/project.csproj
if($LASTEXITCODE) {
    exit 1
}

write-host "dotnet run" -f cyan
if(-not (test-path artifacts)) {
    md artifacts | out-null
}

dotnet run -p ./src/project.csproj | out-file artifacts/out.txt
if($LASTEXITCODE) {
    exit 1
}

$str = gc artifacts/out.txt 
write-host "$str" -f yellow
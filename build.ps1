write-host "dotnet restore" -f cyan
dotnet restore
write-host "dotnet build" -f cyan
dotnet build
write-host "dotnet run" -f cyan
if(-not (test-path artifacts)) {
    md artifacts | out-null
}
dotnet run | out-file artifacts/out.txt
$str = gc artifacts/out.txt 
write-host "$str" -f yellow
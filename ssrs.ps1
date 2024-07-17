#Remote report files 
$remoteReports = $SSRSProxy.Listchildren($reportPath, $true) | % { $_.Name+".rdl"} | Out-String

#report rds  files 
$remoteRds = $SSRSProxy.Listchildren($reportPath, $true) | % { $_.Name+".rds"} | Out-String

# Remote Rds files
$remoteRsd = $SSRSProxy.Listchildren($reportPath, $true) | % { $_.Name+".rsd"} | Out-String


if ($remoteReports -match $_ -or $remoteRds -match $_ -or $remoteRsd -match $_) {
        
        $filename = $_.BaseName
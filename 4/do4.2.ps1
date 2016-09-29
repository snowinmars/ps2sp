$"4.2.1"
Get-SPSite | Get-SPWeb

$"4.2.2"
Get-SPWebTemplate | where CompatibilityLevel -eq 15 | Sort-Object -Property Name | Select -First 10 > file

$"4.2.3"
$host.UI.RawUI.ForegroundColor = 'blue'
Get-SPLogEvent -MinimumLevel "Unexpected" -StartTime  (Get-Date).AddDays(-1) | Select -First 10
$host.UI.RawUI.ForegroundColor = 'green'
Write-Host "4.2.1"
Get-SPSite | Get-SPWeb

Write-Host "4.2.2"
Get-SPWebTemplate | where CompatibilityLevel -eq 15 | Sort-Object -Property Name | Select -First 10 > file
Write-Host "Saved to file"

Write-Host "4.2.3"
$color = $host.UI.RawUI.ForegroundColor
$host.UI.RawUI.ForegroundColor = 'blue'
Get-SPLogEvent -MinimumLevel "Unexpected" -StartTime  (Get-Date).AddDays(-1) | Select -First 10
$host.UI.RawUI.ForegroundColor = $color
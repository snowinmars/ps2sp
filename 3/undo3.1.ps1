Import-Module C:\Users\Dmitrii_Tkachenko\Desktop\tasks\4\3.1.vars.psm1

Remove-SPSite -Identity $thirdsitename -confirm:$false
Write-Host "removed SPSite " + $thirdsitename

Remove-SPSite -Identity $secondsitename -confirm:$false
Write-Host "removed SPSite " + $secondsitename

Remove-SPManagedPath -WebApplication $hostname -Identity "documentstorage" -confirm:$false
Write-Host "removed SPManagedPath documentstorage for WebApplication " + $hostname

Remove-SPSite -Identity $firstsitename -confirm:$false
Write-Host "removed SPSite" + $firstsitename

Remove-SPWebApplication -Identity $hostname -confirm:$false
Write-Host "removed SPWebApplication " + $hostname

Remove-SPServiceApplicationPool -Identity $poolname -confirm:$false
Write-Host "removed SPServiceApplicationPool " + $poolname
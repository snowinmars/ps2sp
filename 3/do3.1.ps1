Import-Module C:\Users\Dmitrii_Tkachenko\Desktop\tasks\4\3.1.vars.psm1

Trap [System.Exception] {
    Write-Host "Error occured. Program terminated. Details:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host $_.Exception.ItemName -ForegroundColor Red
    return;
}

New-SPServiceApplicationPool -Name $poolname -Account $account

New-SPWebApplication -ApplicationPool $poolname -ApplicationPoolAccount (Get-SPManagedAccount $account) -Name $hostname -Url $basesiteurl -port 80 -DatabaseName $databasename -HostHeader NewShaerPointSnowWebApp

New-SPSite $firstsitename -OwnerAlias $account -Template (Get-SPWebTemplate "STS#0")

New-SPManagedPath -WebApplication $hostname -RelativeURL "documentstorage"

New-SPSite $secondsitename -OwnerAlias $account -Template (Get-SPWebTemplate "BDR#0")

New-SPSite $thirdsitename -OwnerAlias $account -Template (Get-SPWebTemplate "BDR#0")

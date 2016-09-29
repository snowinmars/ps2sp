$poolname = "NewSnowAppPool"
$hostname = "newsnowhost"
$account = "SARATOV\Dmitrii_Tkachenko"
$databasename = "New_SharePoint_contentDB"
$protocol = "http://"
$basesiteurl = $protocol + $hostname
$thirdsitename = $basesiteurl + "/documentstorage/docs2"
$firstsitename = $basesiteurl + "/sites/twitter"
$secondsitename = $basesiteurl + "/documentstorage/docs1"

Remove-SPSite -Identity $thirdsitename
Remove-SPSite -Identity $secondsitename
Remove-SPManagedPath -WebApplication $hostname -Identity "documentstorage"
Remove-SPSite -Identity $firstsitename
Remove-SPWebApplication -Identity $hostname
Remove-SPServiceApplicationPool -Identity $poolname
$poolname = "NewSnowAppPool"
$hostname = "newsnowhost"
$account = "SARATOV\Dmitrii_Tkachenko"
$databasename = "New_SharePoint_contentDB"
$protocol = "http://"
$basesiteurl = $protocol + $hostname
$firstsitename = $basesiteurl + "/sites/twitter"
$secondsitename = $basesiteurl + "/documentstorage/docs1"
$thirdsitename = $basesiteurl + "/documentstorage/docs2"

Export-ModuleMember -Variable 'poolname'
Export-ModuleMember -Variable 'hostname'
Export-ModuleMember -Variable 'account'
Export-ModuleMember -Variable 'databasename'
Export-ModuleMember -Variable 'protocol'
Export-ModuleMember -Variable 'basesiteurl'
Export-ModuleMember -Variable 'thirdsitename'
Export-ModuleMember -Variable 'firstsitename'
Export-ModuleMember -Variable 'secondsitename'
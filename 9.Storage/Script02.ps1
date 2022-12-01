$AccountName="appstorej100"
$ResourceGroupName="powershell-grp"
$Location="East Asia"
$ContainerName="data"
$StorageAccount=Get-AzStorageAccount -Name $AccountName -ResourceGroupName $ResourceGroupName

New-AzStorageContainer -Name $ContainerName -Context $StorageAccount.Context `
-Permission Blob

$AccountName="appstorej100"
$ResourceGroupName="powershell-grp"
$ContainerName="data"

$StorageAccount=Get-AzStorageAccount -Name $AccountName -ResourceGroupName $ResourceGroupName
$BlobObject=@{
    Filelocation="iceburg.jpg"
    ObjectName="iceburg.jpg"
}
Set-AzStorageBlobContent -Context $StorageAccount.Context -Container $ContainerName -File $BlobObject['FileLocation'] -Blob $BlobObject['ObjectName']

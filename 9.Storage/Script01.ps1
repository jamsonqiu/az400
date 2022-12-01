$AccountName="appstorej100"
$AccountKind="StorageV2"
$AccountSKU="Standard_LRS"
$ResourceGroupName="powershell-grp"
$Location="East Asia"

$StorageAccount=New-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $AccountName `
-Location $Location -Kind $AccountKind -SkuName $AccountSKU

$StorageAccount
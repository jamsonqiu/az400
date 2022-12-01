#Disable-AzContextAutosave
$ResourceGroupName = "powershell-grp"
$Location = "East Asia"

New-AzResourceGroup -Name $ResourceGroupName -Location $Location
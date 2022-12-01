$ResourceGroupName = "powershell-grp"

Remove-AzResourceGroup $ResourceGroupName -Force

$ResourceGroupName = "powershell-grp"
$Location = "East Asia"
$ResourceGroup=New-AzResourceGroup -Name $ResourceGroupName -Location $Location

'Provisioning state '+ $ResourceGroup.ProvisioningState
$ResourceGroup

$allgroup=Get-AzResourceGroup
foreach($group in $allgroup)
{
    $group.ResourceGroupName
}
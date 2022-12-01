#Disable-AzContextAutosave
$ResourceGroupName = "powershell-grp"
$Location = "East Asia"

$AppID="appliation id"
$AppSecret="generate a secert"

$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $AppID,$SecureSecret
$TenantID="Directory ID"

Connect-AzAccount -ServicePrincipal -Credential $Credential -Tenant $TenantID
#RBAC required for the application object service principle,subscription level to grant contributor access
New-AzResourceGroup -Name $ResourceGroupName -Location $Location
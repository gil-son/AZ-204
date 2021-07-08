$rg = 'arm-resource-group-test'
New-AzResourceGroup -Name $rg -Location eastus2 -Force

New-AzResourceGroupDeployment `
    -Name 'storage-test' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' 
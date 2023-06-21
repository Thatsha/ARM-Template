$resourceGroupName = "rg-thatsha-60893"
$storageAccountName = "thatsha60893"
$serviceBusNamespaceName = "sbthatsha60893"
$location = "eastus"

New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile template.json `
    -TemplateParameterObject @{
        "resourceGroupName"=$resourceGroupName;
        "storageAccountName"=$storageAccountName;
        "serviceBusNamespaceName"=$serviceBusNamespaceName;
        "location"=$location
    }

#ssh-keygen -t rsa -b 2048

#az ad sp create-for-rbac --skip-assignment

az group create --name rg-testing --location eastus

az deployment group create `
  --name kube-deploy `
  --resource-group rg-testing `
  --template-file cluster.json `
  --parameters @cluster-parameters.json
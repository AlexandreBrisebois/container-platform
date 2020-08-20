az login

# Verify selected subscription
az account show -o table

# Set correct subscription (if needed)
az account set --subscription <SUBSCRIPTION_ID>

# deploy full solution
az deployment sub create --location eastus --template-file "./deploy/arm/azdeploy.json" --parameters "./deploy/arm/azdeploy.parameters.json" --verbose
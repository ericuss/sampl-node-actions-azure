# az login

az appservice plan create \
    --resource-group rg-test-app-node-actions-azure \
    --name sp-test-app-node-actions-azure \
    --is-linux

az webapp create \
    --name test-app-node-actions-azure-dev \
    --plan sp-test-app-node-actions-azure \
    --resource-group rg-test-app-node-actions-azure \
    --runtime "node|10.14"

az webapp create \
    --name test-app-node-actions-azure-stg \
    --plan sp-test-app-node-actions-azure \
    --resource-group rg-test-app-node-actions-azure \
    --runtime "node|10.14"
    
az webapp create \
    --name test-app-node-actions-azure-pro \
    --plan sp-test-app-node-actions-azure \
    --resource-group rg-test-app-node-actions-azure \
    --runtime "node|10.14"
az login
az account list
az account set --subscription="Subscription_ID"


az group list --query "[][name]" -o tsv
# to check the resource groups in your seleceted subscription

#Create  a Service Principle account 

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"
#creating a service principal account that can be used by terraform provider to be authenticated by Azure


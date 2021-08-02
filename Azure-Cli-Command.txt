#az login
#az account list
#az account set --subscription="Subscription_ID"
$To see the list of Directory in the Account$
#az group list --query "[][name]" -o tsv
# to check the resource groups in your seleceted subscription

#creating a service principal account that can be used by terraform provider to be authenticated by Azure
#az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"




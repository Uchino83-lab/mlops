RESOURCE_GROUP_NAME="my-mlops-group"
LOCATION="westus3"
WORKSPACE_NAME="ml-mlops-workspace-vp"
CLUSTER_NAME="mlops-cluster-vp"

az group create -n $RESOURCE_GROUP -l $LOCATION

az ml workspace create -g $RESOURCE_GROUP -n $WORKSPACE_NAME -l $LOCATION

az ml workspace set -g $RESOURCE_GROUP -w $WORKSPACE_NAME

az ml compute create --name $CLUSTER_NAME \
    --type amlcompute \
    --size STANDARD_DS11_v2 \
    --min-instances 0 \
    --max-instances 2 \


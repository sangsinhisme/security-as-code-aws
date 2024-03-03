#!/bin/bash

PROFILE=default
REGION=ap-southeast-2
PRODUCTID=prod-nbhbdmzd4sr6c
PROVISIONARTIFACTI=pa-j36k2p67a56hu


aws servicecatalog provision-product \
    --provisioned-product-name "eks-provision" \
    --provisioning-artifact-id $PROVISIONARTIFACTID \
    --product-id $PRODUCTID \
    --provisioning-parameters file://parameter/eks-provisioner.json \
    --profile $PROFILE \
    --region $REGION

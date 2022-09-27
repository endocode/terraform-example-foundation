#!/bin/bash

set -e

echo "Setting up environment variables..."


# Organization level ID and Domain
# Endocode organization id: 546434885099
export ORG_ID=""

export ORG_DOMAIN="endocodelab.com"

# Billing account
# Endocodelab Billing Account: 013DC7-EC4FAA-E90811
export BILLING_ACCOUNT="" 

# Root folder where all resources will be created
export ROOT_FOLDER=""

# region and zones for GCP resources (GKE, Buckets etc)
export REGION_1="europe-west3"
export ZONE_1="europe-west3-a"

# Terraform state bucket and TF service account
# Fill these both variables from the output of bootstrap stage
export TF_STATE_BUCKET=""
export TF_SA=""

# Admin group email for all the permissions. e.g org, billing admins, billing_data_users,
# audit_data_users, monitoring_workspace_users in future this can be changed as there are 
# different group access at 
# diff levels
# team-test@endocodelab.com 
export ADMIN_EMAIL="yongxin.chen@endocodelab.com"

# Authenticated user on GCloud SDK for Git Modules (to fetch child google source repositories for every layer)
export GCP_AUTHENTICATED_USER=""


echo "Subsituting values for environment variables in bootstrap..."

# Comment the remotestate envsubst for initiating bootstrap stage
# envsubst < 0-bootstrap/remotestate.tf.tmpl > 0-bootstrap/remotestate.tf
# envsubst < 0-bootstrap/terraform.tfvars.tmpl > 0-bootstrap/terraform.tfvars

# envsubst < 01-org/bootstrap.sh.tmpl > 01-org/bootstrap.sh
# envsubst < 02-environments/bootstrap.sh.tmpl > 02-environments/bootstrap.sh
# envsubst < 03-networks/bootstrap.sh.tmpl > 03-networks/bootstrap.sh
# envsubst < 04-projects/bootstrap.sh.tmpl > 04-projects/bootstrap.sh
# envsubst < 05-instances/bootstrap.sh.tmpl > 05-instances/bootstrap.sh

# envsubst < .gitmodules.tmpl > .gitmodules
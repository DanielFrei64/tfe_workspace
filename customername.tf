############################################################
#
#     Main Workspace
#
############################################################

module "CustomerName-main" {
  source              = "./modules/tfe_workspace"
  org_id              = tfe_organization.OrganizationName.id
  workspace_name      = "CustomerName-main"
  company_name        = "CustomerName"
  cloudsitename       = "CustomerName"
  branch              = "master"
  alertemail          = "user@email.com"
  envtype             = "PRD1"
  buildcerts          = "true"
  region              = "East US"
  builddate           = 20202104
  is_fedramp          = "false"
  us_support_only     = "false"
  tenant_id           = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  is_redcloud         = "false"
  is_public           = "true"
  vnet_range          = "[\"192.168.0.0/25\"]"
  nsgman_source_ips   = "[\"1.1.1.1/32\"]"
  nsgweb_source_ips   = "[\"1.1.1.1/32\"]"
  oauth_token_id      = var.oauth_token_id
  os_image_key        = var.os_image_key
  devopsauth          = var.devopsauth
  ARM_SUBSCRIPTION_ID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ARM_TENANT_ID       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ARM_CLIENT_ID       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ARM_CLIENT_SECRET   = var.ARM_CLIENT_SECRET
}

############################################################
#
#     Create one of these blocks for each environment
#
#############################################################

module "CustomerName-envtype" {
  source              = "./modules/environment"
  org_id              = tfe_organization.OrganizationName.id
  workspace_name      = "CustomerName-prd1"
  company_name        = "CustomerName"
  cloudsitename       = "CustomerName"
  branch              = "master"
  envtype             = "PRD1"
  region              = "East US"
  builddate           = 20202104
  tenant_id           = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ep_name             = "GP_Gen4"
  ep_edition          = "GeneralPurpose"
  ep_compute_gen      = "Gen4"
  vcores              = 4
  is_public           = "true"
  number_of_web       = 1
  number_of_app       = 1
  number_of_con       = 1
  os_image_key        = var.os_image_key
  oauth_token_id      = var.oauth_token_id
  devopsauth          = var.devopsauth
  ARM_SUBSCRIPTION_ID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ARM_TENANT_ID       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ARM_CLIENT_ID       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  ARM_CLIENT_SECRET   = var.ARM_CLIENT_SECRET
}
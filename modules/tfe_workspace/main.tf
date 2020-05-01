variable org_id {}
variable workspace_name {}
variable company_name {}
variable branch {}
variable cloudsitename {}
variable alertemail {}
variable envtype {}
variable buildcerts {}
variable region {}
variable builddate {}
variable is_fedramp {}
variable us_support_only {}
variable tenant_id {}
variable is_redcloud {}
variable is_public {}
variable vnet_range {}
variable nsgman_source_ips {}
variable nsgweb_source_ips {}
variable oauth_token_id {}
variable devopsauth {}
variable os_image_key {}
variable ARM_CLIENT_SECRET {}
variable ARM_SUBSCRIPTION_ID {}
variable ARM_TENANT_ID {}
variable ARM_CLIENT_ID {}


resource "tfe_workspace" "main" {

  name              = "${substr(var.company_name, 0, 8)}_main"
  organization      = var.org_id
  terraform_version = "0.12.20"
  auto_apply        = true
  vcs_repo {
    identifier         = "git/repo/_git/path"
    ingress_submodules = "false"
    oauth_token_id     = var.oauth_token_id
    branch             = var.branch
  }
}

resource "tfe_variable" "company_name" {

  key          = "company_name"
  value        = var.company_name
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "cloudsitename" {

  key          = "cloudsitename"
  value        = var.cloudsitename
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "alertemail" {

  key          = "alertemail"
  value        = var.alertemail
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "envtype" {

  key          = "envtype"
  value        = var.envtype
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "buildcerts" {

  key          = "buildcerts"
  value        = var.buildcerts
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "region" {

  key          = "region"
  value        = var.region
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "builddate" {

  key          = "builddate"
  value        = var.builddate
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "is_fedramp" {

  key          = "is_fedramp"
  value        = var.is_fedramp
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "us_support_only" {

  key          = "us_support_only"
  value        = var.us_support_only
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "tenant_id" {

  key          = "tenant_id"
  value        = var.tenant_id
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "is_redcloud" {

  key          = "is_redcloud"
  value        = var.is_redcloud
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "is_public" {

  key          = "is_public"
  value        = var.is_public
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}


###########################
#  Secret Variables
###########################


resource "tfe_variable" "devopsauth" {

  key          = "devopsauth"
  value        = var.devopsauth
  category     = "terraform"
  workspace_id = tfe_workspace.main.id
  sensitive    = true

}

###########################
#  HCL Variables
###########################

resource "tfe_variable" "vnet_range" {

  key          = "vnet_range"
  value        = var.vnet_range
  category     = "terraform"
  workspace_id = tfe_workspace.main.id
  hcl          = true

}

resource "tfe_variable" "nsgman_source_ips" {

  key          = "nsgman_source_ips"
  value        = var.nsgman_source_ips
  category     = "terraform"
  workspace_id = tfe_workspace.main.id
  hcl          = true

}

resource "tfe_variable" "nsgweb_source_ips" {

  key          = "nsgweb_source_ips"
  value        = var.nsgweb_source_ips
  category     = "terraform"
  workspace_id = tfe_workspace.main.id
  hcl          = true

}
###########################
#  Environment Variables
###########################

resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {

  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "ARM_TENANT_ID" {

  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "ARM_CLIENT_ID" {

  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "ARM_CLIENT_SECRET" {

  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  category     = "env"
  workspace_id = tfe_workspace.main.id

}

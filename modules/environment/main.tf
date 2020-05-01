variable org_id {}
variable workspace_name {}
variable branch {}
variable company_name {}
variable cloudsitename {}
variable envtype {}
variable region {}
variable tenant_id {}
variable builddate {}
variable ep_name {}
variable ep_edition {}
variable ep_compute_gen {}
variable vcores {}
variable is_public {}
variable number_of_web {}
variable number_of_app {}
variable number_of_con {}
variable oauth_token_id {}
variable devopsauth {}
variable os_image_key {}
variable ARM_SUBSCRIPTION_ID {}
variable ARM_TENANT_ID {}
variable ARM_CLIENT_ID {}
variable ARM_CLIENT_SECRET {}

resource "tfe_workspace" "main" {

  name              = "${substr(var.company_name, 0, 8)}_${var.envtype}"
  organization      = var.org_id
  terraform_version = "0.12.20"
  queue_all_runs    = false
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

resource "tfe_variable" "envtype" {

  key          = "envtype"
  value        = var.envtype
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

resource "tfe_variable" "tenant_id" {

  key          = "tenant_id"
  value        = var.tenant_id
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "ep_name" {

  key          = "ep_name"
  value        = var.ep_name
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "ep_edition" {

  key          = "ep_edition"
  value        = var.ep_edition
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "ep_compute_gen" {

  key          = "ep_compute_gen"
  value        = var.ep_compute_gen
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "vcores" {

  key          = "vcores"
  value        = var.vcores
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "is_public" {

  key          = "is_public"
  value        = var.is_public
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "number_of_web" {

  key          = "number_of_web"
  value        = var.number_of_web
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "number_of_app" {

  key          = "number_of_app"
  value        = var.number_of_app
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}

resource "tfe_variable" "number_of_con" {

  key          = "number_of_con"
  value        = var.number_of_con
  category     = "terraform"
  workspace_id = tfe_workspace.main.id

}


###########################
#  Secret Variables
###########################



resource "tfe_variable" "os_image_key" {

  key          = "os_image_key"
  value        = var.os_image_key
  category     = "terraform"
  workspace_id = tfe_workspace.main.id
  sensitive    = true

}

###########################
#  HCL Variables
###########################



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

provider "tfe" {
  version  = "~> 0.15.0"
  token    = var.tfe_org_token_id
  hostname = "tfe.host.name"
}

variable "tfe_org_token_id" {}

resource "tfe_organization" "OrganizationName" {
  name  = "OrganizationName"
  email = "user@email.com"
}

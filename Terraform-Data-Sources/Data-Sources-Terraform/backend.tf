terraform {
  cloud {
    organization = "Mike-cloud-Labs"

    workspaces {
      name = "Learn-Terraform-Workspace"
    }
  }
}
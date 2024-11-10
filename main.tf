terraform {
  backend "remote" {
    organization = "myomins"
    workspaces {
      name = "terraform-ci-github-action"
    }
  }
}
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!!!"
  }
}
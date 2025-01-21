terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.token
  owner = var.github_org
}

resource "github_repository" "ost" {
  name        = "ost"
  description = "My tests codebase"
  visibility = "private"
  private = true
  has_issues = true
  has_wiki = true
}

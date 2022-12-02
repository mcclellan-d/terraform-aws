terraform {
  cloud {
    organization = "isekai"

    workspaces {
      name = "isekai-dev"
    }
  }
}
provider "aws" {
  default_tags {
    tags = var.resource_tags
  }
}
provider "aws" {
  region = var.region
}

// Module example
module "db_pg_example" {
  source      = "../"
  name        = var.name
  description = var.description
  family      = var.family
  tags        = var.tags
}

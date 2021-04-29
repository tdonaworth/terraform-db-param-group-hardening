// Stub out your AWS connections here:
provider "aws" {
  region = "us-east-1"
}


// Module example
module "db_pg_example" {
    source        = "../"
    name          = var.name
    description   = var.description
    family        = var.family
    tags          = var.tags
    parameters    = jsondecode(file("../pg_hardening/${var.family}_hardening.json"))
}

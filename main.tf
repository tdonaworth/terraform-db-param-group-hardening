resource "aws_db_parameter_group" "this" {
  name        = var.name
  family      = var.family
  description = var.description
  tags        = var.tags

  dynamic "parameter" {
    for_each = var.parameters
    content {
      name         = parameter.value["name"]
      value        = parameter.value["value"]
      apply_method = parameter.value["apply_method"]
    }
  }
}
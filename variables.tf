variable "name" {
  type        = string
  description = "The name of the DB parameter group. If omitted, Terraform will assign a random, unique name."
}

variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "The description of the DB parameter group. Defaults to 'Managed by Terraform'"
}

variable "family" {
  type        = string
  description = "(Required, Forces new resource) The family of the DB parameter group."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
}

variable "parameters" {
  type        = list(map(any))
  description = "A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-parameters after initial creation of the group."
}
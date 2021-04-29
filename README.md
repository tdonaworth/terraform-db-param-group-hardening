# DB Parameter Group Hardening Module

Terraform module to create a DB Parameter Group for default hardening values.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | The description of the DB parameter group. Defaults to 'Managed by Terraform' | `string` | `"Managed by Terraform"` | no |
| family | (Required, Forces new resource) The family of the DB parameter group. | `string` | n/a | yes |
| name | The name of the DB parameter group. If omitted, Terraform will assign a random, unique name. | `string` | n/a | yes |
| parameters | A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-parameters after initial creation of the group. | `list(map(any))` | n/a | yes |
| tags | A map of tags to assign to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the db parameter group. |
| id | The db parameter group name. |


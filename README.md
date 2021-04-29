# DB Parameter Group Hardening Module

Terraform module to create a DB Parameter Group for default hardening values.

## Parameter Group Hardening Files

The `pg_hardening` directory contains json files, which outline the differential changes between what the default parameter groups contain, and what the desired settings should be. The file names match the parameter group family designations (ex: `mysql8.0_hardening.json` matches the family `mysql8.0`).

These files are automatically pulled in based on the configured `family` name. A future update will allow for you to append or overwrite some of these, but for now, if you have deviations, please Fork, and edit the cooresponding file accordingly.

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
| tags | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the db parameter group. |
| id | The db parameter group name. |


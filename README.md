# terraform-aws-cost-anomaly-detector

This Terraform module provisions a AWS Cost Anomaly Detection.
AWS Cost Anomaly Detection is a monitoring feature that utilizes advanced machine learning techniques that identify anomalous and suspicious spend behaviors as early as possible. This helps you avoid unexpected and expensive surprises in your AWS bills.

## Installation

To use this module, you need to have Terraform installed. You can find installation instructions on the Terraform website.

## Usage

The module will create an AWS Cost anomaly Detection.
Use this module multiple times to create repositories with different configurations.

Include this repository as a module in your existing terraform code:

```python


################################################################################
# AWS Cost anomaly Detection
################################################################################


module "cost-anomaly-detector-example" {
  source              = "delivops/cost-anomaly-detection/aws"
  # version  = "x.x.x"
  region                = var.region
  emails                = var.emails
  raise_amount_percent  = var.raise_amount_percent
  raise_amount_absolute = var.raise_amount_absolute
  resource_tags = var.tags
}


```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ce_anomaly_monitor.anomaly_monitor](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ce_anomaly_monitor) | resource |
| [aws_ce_anomaly_subscription.realtime_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ce_anomaly_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_emails"></a> [emails](#input\_emails) | List of email addresses to notify | `list(any)` | n/a | yes |
| <a name="input_raise_amount_absolute"></a> [raise\_amount\_absolute](#input\_raise\_amount\_absolute) | The Absolut increase in USD to trigger the detector. (ANOMALY\_TOTAL\_IMPACT\_ABSOLUTE) | `string` | n/a | yes |
| <a name="input_raise_amount_percent"></a> [raise\_amount\_percent](#input\_raise\_amount\_percent) | An Expression object used to specify the anomalies that you want to generate alerts for. The precentage service cost increase than the expected | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | Tags to set for all resources | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## information

1. Time to create a cost-anomaly-detector is around 5 minutes.

## License

MIT


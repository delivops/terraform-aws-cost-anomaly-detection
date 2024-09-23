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
  source              = "delivops/cost-anomaly-detector/aws"
  # version  = "x.x.x"
  region                = var.region
  emails                = var.emails
  raise_amount_percent  = var.raise_amount_percent
  raise_amount_absolute = var.raise_amount_absolute
  resource_tags = var.tags
}


```

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->

## information

1. Time to create a cost-anomaly-detector is around 5 minutes.

## License

MIT


module "cost-anomaly-detector" {
  source                = "delivops/cost-anomaly-detector/aws"
  version               = "0.0."
  region                = "eu-west-1"
  emails                = ["shlomo123@gmail.com , "osnat529@gmail.com"]
  raise_amount_percent  = "10"
  raise_amount_absolute = "15"
  resource_tags = {
    Environment = "global"
    Terraform   = "true"
  }
}